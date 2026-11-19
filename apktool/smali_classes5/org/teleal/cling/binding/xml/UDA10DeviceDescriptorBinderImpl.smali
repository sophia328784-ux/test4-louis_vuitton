.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Lorg/w3c/dom/Document;
    .locals 3

    const-string v0, "Generating DOM from device model: "

    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

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

    invoke-static {p2, p0, v0, p1}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->f(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not generate device descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Device;
    .locals 3

    const-string v0, "Populating device from DOM: "

    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableDevice;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->h(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Element;)V

    new-instance p1, Lorg/teleal/cling/model/meta/UDAVersion;

    iget-object v1, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->b:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    iget v2, v1, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->a:I

    iget v1, v1, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->b:I

    invoke-direct {p1, v2, v1}, Lorg/teleal/cling/model/meta/UDAVersion;-><init>(II)V

    iget-object v1, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->c:Ljava/net/URL;

    invoke-virtual {v0, p0, p1, v1}, Lorg/teleal/cling/binding/staging/MutableDevice;->a(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse device DOM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, La;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static e(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    .locals 11

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    iget-object v2, p1, Lorg/teleal/cling/model/meta/Device;->e:[Lorg/teleal/cling/model/meta/Icon;

    invoke-static {p2, p3, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-static {p2, p3, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Lorg/teleal/cling/model/meta/Device;->g(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->b:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->d:Lorg/teleal/cling/model/meta/ModelDetails;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->c:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    if-eqz v1, :cond_0

    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v5, v1, Lorg/teleal/cling/model/meta/ManufacturerDetails;->a:Ljava/lang/String;

    invoke-static {p2, p3, v3, v5}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/ManufacturerDetails;->b:Ljava/net/URI;

    invoke-static {p2, p3, v3, v1}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    :cond_0
    if-eqz v4, :cond_1

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v4, Lorg/teleal/cling/model/meta/ModelDetails;->b:Ljava/lang/String;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v4, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v4, Lorg/teleal/cling/model/meta/ModelDetails;->c:Ljava/lang/String;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v4, Lorg/teleal/cling/model/meta/ModelDetails;->d:Ljava/net/URI;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->e:Ljava/lang/String;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->g:Ljava/net/URI;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->f:Ljava/lang/String;

    invoke-static {p2, p3, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->h:[Lorg/teleal/cling/model/types/DLNADoc;

    const-string v3, "urn:schemas-dlna-org:device-1-0"

    const-string v4, "dlna:"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    array-length v6, v1

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v1, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2, p3, v9, v8, v3}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->i:Lorg/teleal/cling/model/types/DLNACaps;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p2, p3, v1, v0, v3}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :goto_2
    if-eqz v2, :cond_5

    array-length v0, v2

    if-lez v0, :cond_5

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    array-length v1, v2

    move v3, v5

    :goto_3
    if-ge v3, v1, :cond_5

    aget-object v4, v2, v3

    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, v0, v6}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v6

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v8, v4, Lorg/teleal/cling/model/meta/Icon;->a:Lorg/teleal/common/util/MimeType;

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget v8, v4, Lorg/teleal/cling/model/meta/Icon;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget v8, v4, Lorg/teleal/cling/model/meta/Icon;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget v8, v4, Lorg/teleal/cling/model/meta/Icon;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    invoke-static {p2, v6, v7, v4}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->l()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_6

    :cond_6
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->j()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_4
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, v0, v6}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v6

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v8, v4, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v8, v4, Lorg/teleal/cling/model/meta/Service;->b:Lorg/teleal/cling/model/types/ServiceId;

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    instance-of v7, v4, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v7, :cond_7

    check-cast v4, Lorg/teleal/cling/model/meta/RemoteService;

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v8, v4, Lorg/teleal/cling/model/meta/RemoteService;->g:Ljava/net/URI;

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v8, v4, Lorg/teleal/cling/model/meta/RemoteService;->h:Ljava/net/URI;

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/RemoteService;->f:Ljava/net/URI;

    invoke-static {p2, v6, v7, v4}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    instance-of v7, v4, Lorg/teleal/cling/model/meta/LocalService;

    if-eqz v7, :cond_8

    check-cast v4, Lorg/teleal/cling/model/meta/LocalService;

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lorg/teleal/cling/model/Namespace;->d(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/action"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p0, v4}, Lorg/teleal/cling/model/Namespace;->b(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v8

    invoke-static {p2, v6, v7, v8}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lorg/teleal/cling/model/Namespace;->d(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/desc.xml"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {p2, v6, v7, v4}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_9
    :goto_6
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    array-length v0, p1

    :goto_7
    if-ge v5, v0, :cond_b

    aget-object v1, p1, v5

    invoke-static {p0, v1, p2, p3, p4}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->e(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    return-void
.end method

.method public static f(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/teleal/cling/model/profile/ControlPointInfo;)V
    .locals 4

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device-1-0"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {p2, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, p1, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    iget v3, v3, Lorg/teleal/cling/model/meta/UDAVersion;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v2, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    iget-object v3, p1, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    iget v3, v3, Lorg/teleal/cling/model/meta/UDAVersion;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v2, v3}, Lorg/teleal/cling/model/XMLUtil;->c(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)V

    invoke-static {p0, p1, p2, v0, p3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->e(Lorg/teleal/cling/model/Namespace;Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/profile/ControlPointInfo;)V

    return-void
.end method

.method public static g(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V
    .locals 10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_b

    :cond_0
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->d:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->e:Ljava/lang/String;

    goto/16 :goto_b

    :cond_2
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->f:Ljava/lang/String;

    goto/16 :goto_b

    :cond_3
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->g:Ljava/net/URI;

    goto/16 :goto_b

    :cond_4
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->i:Ljava/lang/String;

    goto/16 :goto_b

    :cond_5
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->h:Ljava/lang/String;

    goto/16 :goto_b

    :cond_6
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->j:Ljava/lang/String;

    goto/16 :goto_b

    :cond_7
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->k:Ljava/net/URI;

    goto/16 :goto_b

    :cond_8
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->n:Ljava/net/URI;

    goto/16 :goto_b

    :cond_9
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->m:Ljava/lang/String;

    goto/16 :goto_b

    :cond_a
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->l:Ljava/lang/String;

    goto/16 :goto_b

    :cond_b
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/model/types/UDN;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->a:Lorg/teleal/cling/model/types/UDN;

    goto/16 :goto_b

    :cond_c
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_25

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v4, :cond_d

    goto/16 :goto_4

    :cond_d
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v6, v5}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v6, Lorg/teleal/cling/binding/staging/MutableIcon;

    invoke-direct {v6}, Lorg/teleal/cling/binding/staging/MutableIcon;-><init>()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v7, v0

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_14

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-eq v9, v4, :cond_e

    goto :goto_3

    :cond_e
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lorg/teleal/cling/binding/staging/MutableIcon;->b:I

    goto :goto_3

    :cond_f
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lorg/teleal/cling/binding/staging/MutableIcon;->c:I

    goto :goto_3

    :cond_10
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lorg/teleal/cling/binding/staging/MutableIcon;->d:I

    goto :goto_3

    :cond_11
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableIcon;->e:Ljava/net/URI;

    goto :goto_3

    :cond_12
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableIcon;->a:Ljava/lang/String;

    :cond_13
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_14
    iget-object v5, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_16
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v3, v0

    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_25

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v4, :cond_17

    goto/16 :goto_8

    :cond_17
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v6, v5}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v6, Lorg/teleal/cling/binding/staging/MutableService;

    invoke-direct {v6}, Lorg/teleal/cling/binding/staging/MutableService;-><init>()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v7, v0

    :goto_6
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_1e

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-eq v9, v4, :cond_18

    goto :goto_7

    :cond_18
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/model/types/ServiceType;->b(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableService;->a:Lorg/teleal/cling/model/types/ServiceType;

    goto :goto_7

    :cond_19
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/model/types/ServiceId;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableService;->b:Lorg/teleal/cling/model/types/ServiceId;

    goto :goto_7

    :cond_1a
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableService;->c:Ljava/net/URI;

    goto :goto_7

    :cond_1b
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableService;->d:Ljava/net/URI;

    goto :goto_7

    :cond_1c
    sget-object v9, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-static {v8}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    iput-object v8, v6, Lorg/teleal/cling/binding/staging/MutableService;->e:Ljava/net/URI;

    :cond_1d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_1e
    iget-object v5, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_20
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v3, v0

    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_25

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v4, :cond_21

    goto :goto_a

    :cond_21
    sget-object v6, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v6, v5}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_22

    new-instance v6, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v6}, Lorg/teleal/cling/binding/staging/MutableDevice;-><init>()V

    iget-object v7, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->s:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v5}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->g(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    :cond_22
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_23
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    const-string v4, "dlna"

    if-eqz v3, :cond_24

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->o:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/teleal/cling/model/types/DLNADoc;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNADoc;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid X_DLNADOC value, ignoring value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_b

    :cond_24
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/model/types/DLNACaps;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNACaps;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->p:Lorg/teleal/cling/model/types/DLNACaps;

    :cond_25
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_26
    return-void
.end method

.method public static h(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Element;)V
    .locals 9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wrong XML namespace declared on root element: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_a

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-eq v8, v6, :cond_3

    goto :goto_2

    :cond_3
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->b:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-static {v7}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->a:I

    goto :goto_2

    :cond_4
    sget-object v8, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->b:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-static {v7}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->b:I

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->URLBase:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_7

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-static {v4}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->c:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid URLBase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v5, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->a(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v2, :cond_8

    move-object v2, v4

    goto :goto_3

    :cond_8
    new-instance p0, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string p1, "Found multiple <device> elements in <root>"

    invoke-direct {p0, p1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring unknown element: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    invoke-static {p0, v2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->g(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/w3c/dom/Node;)V

    return-void

    :cond_c
    new-instance p0, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string p1, "No <device> element in <root>"

    invoke-direct {p0, p1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Root element name is not <root>: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const-string v0, "./"

    const-string v1, "www."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal URI, trying with ./ prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    const-string v1, "Illegal URI \'"

    const-string v3, "\', ignoring value: "

    invoke-static {v1, p0, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Ljava/lang/String;
    .locals 2

    const-string p0, "Generating XML descriptor from device model: "

    :try_start_0
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->c(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/model/XMLUtil;->d(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not build DOM: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public b(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .locals 2

    const-string p0, "Populating device from XML descriptor: "

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->a:Ljava/util/logging/Logger;

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

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->d(Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse device descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, La;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
