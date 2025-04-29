# Pin npm packages by running ./bin/importmap

pin "application"
# pin "@hotwired/turbo-rails", to: "turbo.min.js"
# pin "@hotwired/stimulus", to: "stimulus.min.js"
# pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
# pin_all_from "app/javascript/controllers", under: "controllers"
pin "jquery", to: "https://code.jquery.com/jquery-3.7.1.min.js"
pin "@rails/ujs", to: "@rails--ujs.js" # @7.1.3
pin "leaflet" # @1.9.4
pin "@nathanvda/cocoon", to: "@nathanvda--cocoon.js" # @1.2.14
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.2/dist/esm/index.js"
