$(function(){
	$('.projectInput').tokenInput('/projects.json', {propertyToSearch: 'title', theme: 'facebook'});
	$('.userInput').tokenInput('/users.json', {propertyToSearch: 'name', theme: 'facebook'});
	$('.datePick').datepicker();
});