function load() {
	var translate = new Translate();
	 const lang = localStorage.getItem('preferredLanguage') || 'fr'; 

	var attributeName = 'data-tag';
	translate.init(attributeName, lang);
	translate.process();
}

function setLanguage(lang) {
    localStorage.setItem('preferredLanguage', lang);
    loadTranslations(); // Load translations immediately after setting the language
}
