package encs.concordia.jsf;
import encs.concordia.Customer;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Customer.class, beanName = "customerBean")
public class CustomerBean {
}
