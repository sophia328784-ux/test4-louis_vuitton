.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.super Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentListHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionHandler;,
        Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/meta/RemoteService;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object p0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->b:Ljava/util/logging/Logger;

    const-string v0, "Reading service from XML descriptor"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/common/xml/SAXParser;

    invoke-direct {p0}, Lorg/teleal/common/xml/SAXParser;-><init>()V

    new-instance v0, Lorg/teleal/cling/binding/staging/MutableService;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableService;-><init>()V

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Service;->b:Lorg/teleal/cling/model/types/ServiceId;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->b:Lorg/teleal/cling/model/types/ServiceId;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->a:Lorg/teleal/cling/model/types/ServiceType;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/RemoteService;->g:Ljava/net/URI;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->d:Ljava/net/URI;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/RemoteService;->h:Ljava/net/URI;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->e:Ljava/net/URI;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/RemoteService;->f:Ljava/net/URI;

    iput-object v1, v0, Lorg/teleal/cling/binding/staging/MutableService;->c:Ljava/net/URI;

    new-instance v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;

    invoke-direct {v1, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableService;Lorg/teleal/common/xml/SAXParser;)V

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser;->a:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object p0, p1, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/binding/staging/MutableService;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

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

    const-string v0, "Could not parse service descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, La;->j(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    throw p0
.end method
