// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package encs.concordia.jsf.converter;

import encs.concordia.Customer;
import encs.concordia.jsf.converter.CustomerConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect CustomerConverter_Roo_Converter {
    
    declare parents: CustomerConverter implements Converter;
    
    declare @type: CustomerConverter: @FacesConverter("encs.concordia.jsf.converter.CustomerConverter");
    
    public Object CustomerConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Customer.findCustomer(id);
    }
    
    public String CustomerConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Customer ? ((Customer) value).getId().toString() : "";
    }
    
}
