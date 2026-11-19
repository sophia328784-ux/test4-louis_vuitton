.class Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/utils/LPPresetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDataHandler"
.end annotation


# instance fields
.field playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

.field qName:Ljava/lang/String;

.field sbAlbum:Ljava/lang/StringBuffer;

.field sbAlbumArtURI:Ljava/lang/StringBuffer;

.field sbArtist:Ljava/lang/StringBuffer;

.field sbRes:Ljava/lang/StringBuffer;

.field sbTitle:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbRes:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbTitle:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbArtist:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbum:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbumArtURI:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    const-string p2, "res"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbRes:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    const-string p2, "dc:title"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbTitle:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    const-string p2, "upnp:artist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbArtist:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    const-string p2, "upnp:album"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbum:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    const-string p2, "upnp:albumArtURI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbumArtURI:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "res"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbRes:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "dc:title"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbTitle:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackName(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "upnp:artis"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbArtist:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackArtist(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "upnp:album"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbum:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setAlbumName(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "upnp:albumArtURI"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbumArtURI:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->setTrackImage(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getPlayItem()Lcom/linkplay/lpmdpkit/bean/LPPlayItem;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    return-object p0
.end method

.method public startDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->qName:Ljava/lang/String;

    if-eqz p3, :cond_4

    const-string p1, "res"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->playItem:Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbRes:Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const-string p1, "dc:title"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbTitle:Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p1, "upnp:artist"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbArtist:Ljava/lang/StringBuffer;

    return-void

    :cond_2
    const-string p1, "upnp:album"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbum:Ljava/lang/StringBuffer;

    return-void

    :cond_3
    const-string p1, "upnp:albumArtURI"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$MediaDataHandler;->sbAlbumArtURI:Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method
