.class Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

.field c:Ljava/lang/StringBuffer;

.field d:Ljava/lang/StringBuffer;

.field e:Ljava/lang/StringBuffer;

.field f:Ljava/lang/StringBuffer;

.field g:Ljava/lang/StringBuffer;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->c:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->d:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->e:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->f:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->g:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    const-string p2, "Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    const-string p2, "Name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    const-string p2, "Url"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    const-string p2, "Metadata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    const-string p2, "PicUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
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

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    if-eqz p1, :cond_6

    const-string p1, "Key"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    iget-object p1, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->a:Ljava/util/List;

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    return-void

    :cond_1
    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->a:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "Url"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->b:Ljava/lang/String;

    return-void

    :cond_3
    const-string p1, "Metadata"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->d:Ljava/lang/String;

    return-void

    :cond_4
    const-string p1, "PicUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->c:Ljava/lang/String;

    return-void

    :cond_5
    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->e:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->h:Ljava/lang/String;

    if-eqz p3, :cond_5

    const-string p1, "Key"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    invoke-direct {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;

    return-void

    :cond_0
    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->c:Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p1, "Url"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2
    const-string p1, "Metadata"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->f:Ljava/lang/StringBuffer;

    return-void

    :cond_3
    const-string p1, "PicUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->e:Ljava/lang/StringBuffer;

    return-void

    :cond_4
    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/b$a;->g:Ljava/lang/StringBuffer;

    :cond_5
    return-void
.end method
