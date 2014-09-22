// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package encs.concordia.jsf;

import encs.concordia.Customer;
import encs.concordia.jsf.CustomerBean;
import encs.concordia.jsf.util.MessageFactory;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect CustomerBean_Roo_ManagedBean {
    
    declare @type: CustomerBean: @ManagedBean(name = "customerBean");
    
    declare @type: CustomerBean: @SessionScoped;
    
    private String CustomerBean.name = "Customers";
    
    private Customer CustomerBean.customer;
    
    private List<Customer> CustomerBean.allCustomers;
    
    private boolean CustomerBean.dataVisible = false;
    
    private List<String> CustomerBean.columns;
    
    private HtmlPanelGrid CustomerBean.createPanelGrid;
    
    private HtmlPanelGrid CustomerBean.editPanelGrid;
    
    private HtmlPanelGrid CustomerBean.viewPanelGrid;
    
    private boolean CustomerBean.createDialogVisible = false;
    
    @PostConstruct
    public void CustomerBean.init() {
        columns = new ArrayList<String>();
        columns.add("name");
    }
    
    public String CustomerBean.getName() {
        return name;
    }
    
    public List<String> CustomerBean.getColumns() {
        return columns;
    }
    
    public List<Customer> CustomerBean.getAllCustomers() {
        return allCustomers;
    }
    
    public void CustomerBean.setAllCustomers(List<Customer> allCustomers) {
        this.allCustomers = allCustomers;
    }
    
    public String CustomerBean.findAllCustomers() {
        allCustomers = Customer.findAllCustomers();
        dataVisible = !allCustomers.isEmpty();
        return null;
    }
    
    public boolean CustomerBean.isDataVisible() {
        return dataVisible;
    }
    
    public void CustomerBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid CustomerBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void CustomerBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid CustomerBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void CustomerBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid CustomerBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void CustomerBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid CustomerBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nameCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nameCreateOutput.setFor("nameCreateInput");
        nameCreateOutput.setId("nameCreateOutput");
        nameCreateOutput.setValue("Name:");
        htmlPanelGrid.getChildren().add(nameCreateOutput);
        
        InputText nameCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nameCreateInput.setId("nameCreateInput");
        nameCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{customerBean.customer.name}", String.class));
        nameCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nameCreateInput);
        
        Message nameCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nameCreateInputMessage.setId("nameCreateInputMessage");
        nameCreateInputMessage.setFor("nameCreateInput");
        nameCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nameCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid CustomerBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nameEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nameEditOutput.setFor("nameEditInput");
        nameEditOutput.setId("nameEditOutput");
        nameEditOutput.setValue("Name:");
        htmlPanelGrid.getChildren().add(nameEditOutput);
        
        InputText nameEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nameEditInput.setId("nameEditInput");
        nameEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{customerBean.customer.name}", String.class));
        nameEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nameEditInput);
        
        Message nameEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nameEditInputMessage.setId("nameEditInputMessage");
        nameEditInputMessage.setFor("nameEditInput");
        nameEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nameEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid CustomerBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText nameLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nameLabel.setId("nameLabel");
        nameLabel.setValue("Name:");
        htmlPanelGrid.getChildren().add(nameLabel);
        
        HtmlOutputText nameValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nameValue.setId("nameValue");
        nameValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{customerBean.customer.name}", String.class));
        htmlPanelGrid.getChildren().add(nameValue);
        
        return htmlPanelGrid;
    }
    
    public Customer CustomerBean.getCustomer() {
        if (customer == null) {
            customer = new Customer();
        }
        return customer;
    }
    
    public void CustomerBean.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    public String CustomerBean.onEdit() {
        return null;
    }
    
    public boolean CustomerBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void CustomerBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String CustomerBean.displayList() {
        createDialogVisible = false;
        findAllCustomers();
        return "customer";
    }
    
    public String CustomerBean.displayCreateDialog() {
        customer = new Customer();
        createDialogVisible = true;
        return "customer";
    }
    
    public String CustomerBean.persist() {
        String message = "";
        if (customer.getId() != null) {
            customer.merge();
            message = "message_successfully_updated";
        } else {
            customer.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Customer");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllCustomers();
    }
    
    public String CustomerBean.delete() {
        customer.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Customer");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllCustomers();
    }
    
    public void CustomerBean.reset() {
        customer = null;
        createDialogVisible = false;
    }
    
    public void CustomerBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
