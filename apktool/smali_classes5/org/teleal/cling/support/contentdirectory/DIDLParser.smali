.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.super Lorg/teleal/common/xml/SAXParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/teleal/common/xml/SAXParser;-><init>()V

    return-void
.end method

.method public static a(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;
    .locals 3

    new-instance v0, Lorg/teleal/cling/support/model/DescMeta;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/DescMeta;-><init>()V

    const-string v1, "id"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v1, "nameSpace"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    :cond_1
    return-object v0
.end method

.method public static b(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/item/Item;
    .locals 3

    new-instance v0, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    const-string v1, "id"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    const-string v1, "parentID"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/teleal/cling/support/model/DIDLObject;->b:Ljava/lang/String;

    :try_start_0
    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v1

    const-string v2, "restricted"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/teleal/cling/model/types/Datatype;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lorg/teleal/cling/support/model/DIDLObject;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v1, "refID"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static c(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/Res;
    .locals 3

    new-instance v0, Lorg/teleal/cling/support/model/Res;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/Res;-><init>()V

    const-string v1, "importUri"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    :cond_0
    :try_start_0
    new-instance v1, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v2, "protocolInfo"

    invoke-interface {p0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "size"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    :cond_1
    const-string v1, "duration"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/teleal/cling/support/model/Res;->a:Ljava/lang/String;

    :cond_2
    const-string v1, "bitrate"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    :cond_3
    const-string v1, "sampleFrequency"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    :cond_4
    const-string v1, "bitsPerSample"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    :cond_5
    const-string v1, "nrAudioChannels"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    :cond_6
    const-string v1, "colorDepth"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    :cond_7
    const-string v1, "protection"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    const-string v1, "resolution"

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {p0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In DIDL content, invalid resource protocol info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/DIDLContent;-><init>()V

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;

    invoke-direct {v1, p0, v0, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/cling/support/contentdirectory/DIDLParser;)V

    sget-object v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c:Ljava/util/logging/Logger;

    const-string v2, "Parsing DIDL XML content"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser;->a:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/common/xml/ParserException;

    invoke-direct {p1, p0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p0, "Null or empty XML"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
