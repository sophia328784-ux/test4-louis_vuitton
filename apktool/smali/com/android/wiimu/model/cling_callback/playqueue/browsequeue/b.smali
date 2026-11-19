.class public Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field a:Lb/a;

.field b:Ljava/lang/StringBuffer;

.field c:Ljava/lang/StringBuffer;

.field d:Ljava/lang/StringBuffer;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->b:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->c:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->d:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->g:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->e:Ljava/lang/String;

    new-instance p1, Lb/a;

    invoke-direct {p1}, Lb/a;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->a:Lb/a;

    return-void
.end method


# virtual methods
.method public a()Lb/a;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->e:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->a:Lb/a;

    return-object p0
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->f:Ljava/lang/String;

    const-string p2, "URL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->b:Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->b:Ljava/lang/StringBuffer;

    :cond_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->f:Ljava/lang/String;

    const-string p2, "Metadata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->d:Ljava/lang/StringBuffer;

    :cond_2
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->f:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->c:Ljava/lang/StringBuffer;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->c:Ljava/lang/StringBuffer;

    :cond_4
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->c:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
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

    if-eqz p3, :cond_1

    const-string p1, "ListRoot"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/AlbumInfoXmlParse;->a(Ljava/lang/String;)Lb/a;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->a:Lb/a;

    invoke-virtual {p2, p1}, Lb/a;->a(Lb/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->a:Lb/a;

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lb/a;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->c:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->a:Lb/a;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lb/a;->i:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->d:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->c:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->b:Ljava/lang/StringBuffer;

    :cond_1
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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/b;->f:Ljava/lang/String;

    return-void
.end method
