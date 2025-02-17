function createXMLDocument() {
    const doc = document.implementation.createDocument(null, "groceryStore");

    const root = doc.documentElement;

    // Store Info
    const storeInfo = doc.createElement("storeInfo");

    const storeName = doc.createElement("storeName");
    storeName.textContent = "Магазин \"Фермерски Продукти\"";
    storeInfo.appendChild(storeName);

    const location = doc.createElement("location");
    const city = doc.createElement("city");
    city.textContent = "Пловдив";
    location.appendChild(city);
    const address = doc.createElement("address");
    address.textContent = "бул. България 100";
    location.appendChild(address);

    storeInfo.appendChild(location);

    const contactNumber = doc.createElement("contactNumber");
    contactNumber.textContent = "+359 888 123 456";
    storeInfo.appendChild(contactNumber);

    root.appendChild(storeInfo);

    // Inventory (задължителен елемент)
    const inventory = doc.createElement("inventory");
    root.appendChild(inventory);

    // Orders (незадължителен елемент)
    const orders = doc.createElement("orders");
    root.appendChild(orders);

    return doc;
}

