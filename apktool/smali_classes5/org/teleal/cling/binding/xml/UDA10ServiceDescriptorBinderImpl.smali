.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lorg/teleal/cling/model/meta/Service;)Lorg/w3c/dom/Document;
    .locals 3

    const-string v0, "Generting XML descriptor from service model: "

    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->e(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not generate service descriptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Service;
    .locals 3

    const-string v0, "Populating service from DOM: "

    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/binding/staging/MutableService;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableService;-><init>()V

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Service;->b:Lorg/teleal/cling/model/types/ServiceId;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->b:Lorg/teleal/cling/model/types/ServiceId;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->a:Lorg/teleal/cling/model/types/ServiceType;

    instance-of v1, p0, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteService;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/RemoteService;->g:Ljava/net/URI;

    iput-object v2, v0, Lorg/teleal/cling/binding/staging/MutableService;->d:Ljava/net/URI;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/RemoteService;->h:Ljava/net/URI;

    iput-object v2, v0, Lorg/teleal/cling/binding/staging/MutableService;->e:Ljava/net/URI;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/RemoteService;->f:Ljava/net/URI;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->c:Ljava/net/URI;

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->f(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Element;)V

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/binding/staging/MutableService;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse service DOM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, La;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static e(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)V
    .locals 14

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:service-1-0"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v3, p0, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    iget v3, v3, Lorg/teleal/cling/model/meta/UDAVersion;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v3, p0, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    iget v3, v3, Lorg/teleal/cling/model/meta/UDAVersion;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->b()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->b()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->b()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "QueryStateVariable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v1, v7}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v7

    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v7, v8, v9}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-object v6, v6, Lorg/teleal/cling/model/meta/Action;->b:[Lorg/teleal/cling/model/meta/ActionArgument;

    if-eqz v6, :cond_1

    array-length v8, v6

    if-lez v8, :cond_1

    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v7

    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v6, v9

    sget-object v11, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v7, v11}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v11

    sget-object v12, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v13, v10, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-static {p1, v11, v12, v13}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v12, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v13, v10, Lorg/teleal/cling/model/meta/ActionArgument;->d:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-static {p1, v11, v12, v13}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v12, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v13, v10, Lorg/teleal/cling/model/meta/ActionArgument;->c:Ljava/lang/String;

    invoke-static {p1, v11, v12, v13}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-boolean v10, v10, Lorg/teleal/cling/model/meta/ActionArgument;->e:Z

    if-eqz v10, :cond_0

    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v11, v10}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->c()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object p0

    array-length v1, p0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_7

    aget-object v4, p0, v3

    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v0, v5}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v5

    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v7, v4, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    invoke-static {p1, v5, v6, v7}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-object v6, v4, Lorg/teleal/cling/model/meta/StateVariable;->b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iget-object v7, v6, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a:Lorg/teleal/cling/model/types/Datatype;

    iget-object v8, v6, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->d:Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    instance-of v9, v7, Lorg/teleal/cling/model/types/CustomDatatype;

    if-eqz v9, :cond_3

    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    check-cast v7, Lorg/teleal/cling/model/types/CustomDatatype;

    iget-object v7, v7, Lorg/teleal/cling/model/types/CustomDatatype;->b:Ljava/lang/String;

    invoke-static {p1, v5, v9, v7}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-interface {v7}, Lorg/teleal/cling/model/types/Datatype;->d()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/types/Datatype$Builtin;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v5, v9, v7}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    :goto_3
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-object v9, v6, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->b:Ljava/lang/String;

    invoke-static {p1, v5, v7, v9}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-object v4, v4, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget-boolean v4, v4, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->a:Z

    if-eqz v4, :cond_4

    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "yes"

    invoke-interface {v5, v4, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "no"

    invoke-interface {v5, v4, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v5, v4}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v9, v2

    :goto_5
    if-ge v9, v7, :cond_5

    aget-object v10, v6, v9

    sget-object v11, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v4, v11, v10}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_6

    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p1, v5, v4}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v4

    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-wide v6, v8, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    iget-wide v6, v8, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-wide v5, v8, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->c:J

    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-lez v7, :cond_6

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v4, v7, v5}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method public static f(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Element;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_25

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto/16 :goto_13

    :cond_0
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v5, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_13

    :cond_1
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v5, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_24

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-eq v8, v6, :cond_2

    goto/16 :goto_8

    :cond_2
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Lorg/teleal/cling/binding/staging/MutableAction;

    invoke-direct {v8}, Lorg/teleal/cling/binding/staging/MutableAction;-><init>()V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v6, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-object v11, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v11, v10}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lorg/teleal/cling/binding/staging/MutableAction;->a:Ljava/lang/String;

    goto/16 :goto_7

    :cond_4
    sget-object v11, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v11, v10}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_c

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v13, v6, :cond_5

    goto :goto_6

    :cond_5
    new-instance v13, Lorg/teleal/cling/binding/staging/MutableActionArgument;

    invoke-direct {v13}, Lorg/teleal/cling/binding/staging/MutableActionArgument;-><init>()V

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v14, 0x0

    :goto_4
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_b

    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-eq v2, v6, :cond_6

    goto :goto_5

    :cond_6
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v15}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v15}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lorg/teleal/cling/binding/staging/MutableActionArgument;->a:Ljava/lang/String;

    goto :goto_5

    :cond_7
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v15}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v15}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v2

    iput-object v2, v13, Lorg/teleal/cling/binding/staging/MutableActionArgument;->c:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    goto :goto_5

    :cond_8
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v15}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v15}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lorg/teleal/cling/binding/staging/MutableActionArgument;->b:Ljava/lang/String;

    goto :goto_5

    :cond_9
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v15}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-boolean v6, v13, Lorg/teleal/cling/binding/staging/MutableActionArgument;->d:Z

    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_b
    iget-object v2, v8, Lorg/teleal/cling/binding/staging/MutableAction;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_c
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_d
    iget-object v2, v0, Lorg/teleal/cling/binding/staging/MutableService;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_f
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v4, 0x0

    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v6, :cond_10

    goto/16 :goto_12

    :cond_10
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v5}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_22

    new-instance v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    invoke-direct {v7}, Lorg/teleal/cling/binding/staging/MutableStateVariable;-><init>()V

    check-cast v5, Lorg/w3c/dom/Element;

    new-instance v8, Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    const-string v9, "sendEvents"

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "YES"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move v9, v6

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    :goto_a
    invoke-direct {v8, v9}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(Z)V

    iput-object v8, v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;->f:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v8, 0x0

    :goto_b
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_21

    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v10, v6, :cond_12

    goto/16 :goto_11

    :cond_12
    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v10, v9}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v9}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;->a:Ljava/lang/String;

    goto/16 :goto_11

    :cond_13
    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v10, v9}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {v9}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/teleal/cling/model/types/Datatype$Builtin;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v9

    goto :goto_c

    :cond_14
    new-instance v10, Lorg/teleal/cling/model/types/CustomDatatype;

    invoke-direct {v10, v9}, Lorg/teleal/cling/model/types/CustomDatatype;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    :goto_c
    iput-object v9, v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;->b:Lorg/teleal/cling/model/types/Datatype;

    goto/16 :goto_11

    :cond_15
    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v10, v9}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-static {v9}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;->c:Ljava/lang/String;

    goto/16 :goto_11

    :cond_16
    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v10, v9}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_1a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v11, 0x0

    :goto_d
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_19

    invoke-interface {v9, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v13, v6, :cond_17

    goto :goto_e

    :cond_17
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v12}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-static {v12}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_19
    iput-object v10, v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;->d:Ljava/util/ArrayList;

    goto :goto_11

    :cond_1a
    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v10, v9}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_20

    new-instance v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    invoke-direct {v10}, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;-><init>()V

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v11, 0x0

    :goto_f
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_1f

    invoke-interface {v9, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v13, v6, :cond_1b

    goto :goto_10

    :cond_1b
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v12}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_1c

    :try_start_0
    invoke-static {v12}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->a:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :cond_1c
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v12}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_1d

    :try_start_1
    invoke-static {v12}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->b:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :cond_1d
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v12}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_1e

    :try_start_2
    invoke-static {v12}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->c:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1e
    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_1f
    iput-object v10, v7, Lorg/teleal/cling/binding/staging/MutableStateVariable;->e:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    :cond_20
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_21
    iget-object v5, v0, Lorg/teleal/cling/binding/staging/MutableService;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring unknown element: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_24
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_25
    return-void

    :cond_26
    new-instance v0, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Root element name is not <scpd>: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/teleal/cling/model/meta/RemoteService;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;
    .locals 2

    const-string p0, "Populating service from XML descriptor: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->d(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse service descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, La;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final b(Lorg/teleal/cling/model/meta/Service;)Ljava/lang/String;
    .locals 2

    const-string p0, "Generating XML descriptor from service model: "

    :try_start_0
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->c(Lorg/teleal/cling/model/meta/Service;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/model/XMLUtil;->d(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not build DOM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
