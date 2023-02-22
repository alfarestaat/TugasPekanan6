/*
Create and export a module with class "SecurePage".
This class behaves as a Child class, which contains the selectors of Secure page UI elements required for the test automation scenarios.
This module can be imported and called from Step Definitions to access the UI elements.
*/

const Page = require('./page.js')

class DashboardPage extends Page {
    get dashboardPageElement () {
        return $('//h3[contains(text(),"kasirAja")]')
    }

    get pelangganMenuElement () {
        return $('#root > div > div > div.css-tnxwfz > div > a:nth-child(9) > div > div > div')
    }

    get btnTambahPelanggan() {
        return $("#root > div > div > div.css-1r35f0l > div.chakra-container.css-9rmdie > div.css-1t33j5j > a");
    }

    get inputName() {
        return $("#nama");
    }
    
    get inputPhoneNumber() {
        return $('[id="no.hp"]');
    }
    
    get inputAddress() {
        return $("#alamat");
    }
    
    get inputNote() {
        return $("#keterangan");
    }

    get btnSimpanPelanggan() {
        return $("#root > div > div > div.css-1r35f0l > div.chakra-container.css-9rmdie > div.css-1t33j5j > button");
    }

    get messageElement () {
        return $('[id="chakra-toast-manager-top-right"')
    }

    get errorMessagePelanggan () {
        return $('#root > div > div > div.css-1r35f0l > div.chakra-container.css-9rmdie > div.css-1t33j5j > div.chakra-alert.css-qwanz3')
    }
}

module.exports = new DashboardPage();