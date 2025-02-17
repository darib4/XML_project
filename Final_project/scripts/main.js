function serializeDocument(doc) {
    // Сериализация на XML документа в string
    const serializer = new XMLSerializer();
    const xmlString = serializer.serializeToString(doc);

    // Форматиране с vkbeautify (4 интервала за отстъп)
    return vkbeautify.xml(xmlString, 4);
}

function showGeneratedXML(content) {
    // Показване на XML в <pre> елемент
    const outputElement = document.getElementById("output");
    outputElement.textContent = content;
}

function generateXML() {
    try {
        // Създаване на XML документа
        const xmlDoc = createXMLDocument();

        // Сериализация и форматиране
        const formattedXML = serializeDocument(xmlDoc);

        // Показване на форматирания XML
        showGeneratedXML(formattedXML);
    } catch (error) {
        console.error("Грешка при генериране на XML:", error);
        alert("Възникна грешка при генериране на XML. Проверете конзолата за повече информация.");
    }
}


