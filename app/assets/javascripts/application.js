// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require redactor-rails
//= require_tree .

//= require foundation
//= require jquery_ujs
//= require jquery-ui
//= require jquery.mousewheel
//= require jquery.jscrollpane
//= require autocomplete-rails
$(document).foundation('dropdown topbar');
$(document).ready(function() {
	$('.has-dropdown *').mouseover(function() {
		$(this).parents('.has-dropdown').addClass('hover');
	}).mouseout(function() {
		$(this).parents('.has-dropdown').removeClass('hover');
	});

	$( "#match-tasks" ).tabs({
      beforeLoad: function( event, ui ) {
        ui.jqXHR.error(function() {
          ui.panel.html("Tab này đang được hoàn thiện, sẽ hoạt động trong thời gian ngắn nhất có thể.");
        });
      }
    });

	$('#live-commentary .commentary-inner').jScrollPane({
		autoReinitialise : true
	});

	setInterval(function(){
	  var match_id = $('#match-info').data('id'),
	  	  latestCommentaryId = $('#commentaries li').first().attr('id').replace(/commentary-/, '');
	  $.getScript("/matches/"+match_id+"/latest_commentary.js?latestCommentaryId="+latestCommentaryId);
	}, 5000);
})

$(document).foundation();
