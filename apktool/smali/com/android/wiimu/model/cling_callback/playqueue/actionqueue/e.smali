.class public Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;
.super Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;
.source "SourceFile"


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    new-instance p1, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;

    invoke-direct {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    const-string p2, "PresetName"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    :cond_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    :cond_2
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    const-string p2, "PresetKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    :cond_4
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    const-string p2, "PressType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    :cond_6
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    const-string p2, "Volume"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    :cond_8
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "PresetName"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PresetName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const-string p1, "PresetKey"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PresetKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Source:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2
    const-string p1, "PressType"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PressType:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_3
    const-string p1, "Volume"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/f;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->d:Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;->c:Ljava/lang/String;

    return-void
.end method
