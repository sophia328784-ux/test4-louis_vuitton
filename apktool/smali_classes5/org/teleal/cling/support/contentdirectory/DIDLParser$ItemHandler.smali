.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;
.super Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler<",
        "Lorg/teleal/cling/support/model/item/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->f:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "item"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/support/model/item/Item;

    iget-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'dc:title\' element for item: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    if-nez p1, :cond_1

    sget-object p1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'upnp:class\' element for item: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "res"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->f:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/Res;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p3, Lorg/teleal/cling/support/model/item/Item;

    iget-object p2, p3, Lorg/teleal/cling/support/model/DIDLObject;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;

    invoke-direct {p2, v0, p1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/Res;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-void

    :cond_1
    const-string p1, "desc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->a(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;

    move-result-object p1

    check-cast p3, Lorg/teleal/cling/support/model/item/Item;

    iget-object p2, p3, Lorg/teleal/cling/support/model/DIDLObject;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    invoke-direct {p2, v0, p1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)V

    :cond_2
    :goto_0
    return-void
.end method
