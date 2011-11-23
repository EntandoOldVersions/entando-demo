/*
---
 requires: [mootools-1.2-core.js, mootools-1.2-more.js, moo-jAPS-jpmyportalplus-sortable.js, moo-jAPS-jpmyportalplus.js]
...
*/
window.addEvent("domready",function(){
    var a = new MOO_JAPS_JPMYPORTALPLUS({
    	//array con gli id dei contenitori (colonne) dei box trascinabili
			"draggableLists" : ["#widget-col1","#widget-col2","#widget-col3"],
		//selettore classe css per i singoli box tascinabili dentro le colonne specificate in draggableLists
			"selettoreBox" : ".dragdrop_box",
		//durata delle animazioni in millisecondi
			"duration" : 180,
		//selettore classe css per gli elementi di trascinamento dei box
			"selettoreCappello" : ".dragdrop_draggable_area",
		//selettore classe css per l'elemento che attiva l'apertura o la chiusura del box
			"selettoreApriChiudi" : ".openClose",
		//selettore classe css per l'elemento che attiva l'apertura o la chiusura del form di config
			//"selettoreEdit" : ".editContent",
			"selettoreEdit" : ".editContent",
		//selettore per il form del configurazione, è null perchè non è previsto ajax
			"selettoreEditForm" : ".editContentBox",
		//selettore classe css per l'elemento che elemina il box
			"selettoreRemove" : ".removeBox",
		//selettore elemento contenuto del box
			"boxApriChiudi" : ".dragdrop_content",
		//selettore elemento configura box
		//"configEl": ".configure",
		"selettoreEditText" : {
			//testo in stato aperto (null perchè non previsto)
				"open" : null,
			//testo in stato chiuso (null perchè non previsto)
			"close" : null
		},
		//selettore css per il box di configurazione che viene aperto e chiuso
			"boxEdit" : ".editContentBox",
		//contenitore delle colonne, utilizzato per stabilire l'altezza massima
			"contenitoreColonne": "widget-columns-container",
		//selettore css per il form di modifica pagina (è un id)
		"pageEditform": "editshowletlist",
		//classi css di utilizzo durante il trascinamento
			"cssClass" : {
				"draggin" : "dragdrop_while_dragging",
				"cloned" : "dragdrop_boxClone",
				"hover": "dragdrop_hover",
				"editFormElMessage": "form_message"
			},
		//prefisso per gli id dei box
			"showletIdPrefix": "__s__",
		//configurazione ajax presente in /WEB-INF/plugins/jpmyportalplus/aps/jsp/models/inc/jpmyportalplus_javascript_variables.jsp
			"ajaxConfig": JPMYPORTALPLUS_CONFIG,
		
		//evento apri box
			onBoxShow: function(box) {
				var img = box.getElement(this.options.selettoreApriChiudi).getElement("img");
				var src = img.get("src").trim();
				src = src.replace(/-true\.png$/g, "-false.png");
				img.set("src", src);		
			},
			onBoxHide: function(box) {
				var img = box.getElement(this.options.selettoreApriChiudi).getElement("img");
				var src = img.get("src").trim();
				src = src.replace(/-false\.png$/g, "-true.png");
				img.set("src", src);
			} 
	});
	/* apertura box di configurazione pagina */
	var editshowletEl = document.id('editshowlet_title');
	var editshowletListEl = document.id('editshowletlist');
	var windowscroller = new Fx.Scroll(window,{
		"duration": 250,
		"fps": 61,
		"transition": Fx.Transitions.Linear,
		"offset": {
	        x: 0,
	        y: -4
	    }
	});
	var windowscrollerToElementDelayed = function() {
		windowscroller.toElement(editshowletEl);
	};
	var fx = new Fx.Reveal(editshowletListEl,{
		"duration": 250,
		"fps": 61,
		"transition": Fx.Transitions.Linear,
		"mode": "vertical",
		onChainComplete: function(){
			windowscrollerToElementDelayed.delay(83);
			editshowletEl.getElement("a").blur();
			if (editshowletListEl.getStyle("display")=="none") {
				document.id("configure-page").removeClass("spacer-border");
			}
			else {
				document.id("configure-page").addClass("spacer-border");
			}
		}
	});
	editshowletEl.addEvents({
		"click": function(ev){
			ev.preventDefault();
			fx.toggle();
		}
	});

});


window.addEvent("domready", function(){
	var showBox = 	function(configure) {
		configure.addClass("active");
		var img = configure.getElement("img");
		var src = img.getProperty("src").replace(/\.png$/,"-active.png");
		img.set("src", src);

		var pos = configure.getPosition();
		pos.y = pos.y + 20;
		pos.x = pos.x + 0 ;
		var box = document.id(configure.get("href").substring(1));
		box.setPosition(pos);
		//box.fade("in");
		box.setStyles({
				"display": "block",
				"position": "absolute",
				"z-index": 999
		});
	}; 
	var hideBox = function(configure) {
		configure.removeClass("active");
		var img = configure.getElement("img");
		var src = img.getProperty("src").replace(/-active\.png$/,".png");
		img.set("src", src);
		var box = document.id(configure.get("href").substring(1));
		//box.fade("out");
		box.setStyles({
			"display": "none"
		});
	};
	var collectMenu = function(configure) {
		var box = document.id(configure.get("href").substring(1)).getFirst("div");
		var dragdrop_box = configure.getParent(".dragdrop_box");
		var menus = dragdrop_box.getElements(".vai");
		menus.each(function(m) {
			m.inject(box);
		});	
	};
	var configures = document.getElements(".dragdrop_draggable_area a.button.configure");
	configures.each(function(configure) {
		configure.store("box-is-hidden", true);
		configure.addEvents({
			click: function(ev) {
				ev.preventDefault();
				if (this.retrieve("box-is-hidden")) {
					showBox(configure);
					configure.store("box-is-hidden", false);
				}
				else {
					hideBox(configure);
					configure.store("box-is-hidden", true);
				}
			}.bind(configure)
		
		});
		collectMenu(configure);
	});

	window.addEvent("click", function(ev) {
		var active = document.getElements(".dragdrop_draggable_area a.button.configure.active");
		if (active.length > 0) {
			active.each(function(item){
				var box = document.id(item.get("href").substring(1));
				if (ev.target != item && !jQuery.contains(item, ev.target)  && !jQuery.contains(box, ev.target) ) {
					hideBox(item);
				}
			});
		}
	});

});