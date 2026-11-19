.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.super Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;,
        Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$SpecVersionHandler;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .locals 3

    const-string p0, "Populating device from XML descriptor: "

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/common/xml/SAXParser;

    invoke-direct {p0}, Lorg/teleal/common/xml/SAXParser;-><init>()V

    new-instance v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableDevice;-><init>()V

    new-instance v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;

    invoke-direct {v1, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/teleal/common/xml/SAXParser;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser;->a:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance p0, Lorg/teleal/cling/model/meta/UDAVersion;

    iget-object p2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->b:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    iget v1, p2, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->a:I

    iget p2, p2, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->b:I

    invoke-direct {p0, v1, p2}, Lorg/teleal/cling/model/meta/UDAVersion;-><init>(II)V

    iget-object p2, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->c:Ljava/net/URL;

    invoke-virtual {v0, p1, p0, p2}, Lorg/teleal/cling/binding/staging/MutableDevice;->a(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/common/xml/ParserException;

    invoke-direct {p1, p0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse device descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, La;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
