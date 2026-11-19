.class Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/model/cling_callback/playqueue/xml/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field d:Lc/a;

.field e:Lc/b;

.field f:Lb/a;

.field g:Ljava/lang/StringBuffer;

.field h:Ljava/lang/StringBuffer;

.field i:Ljava/lang/StringBuffer;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "TrackRoot"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->a:Ljava/lang/String;

    const-string v0, "<TrackRoot>"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->b:Ljava/lang/String;

    const-string v0, "</TrackRoot>"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->d:Lc/a;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->f:Lb/a;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->g:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->h:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->i:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lc/a;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->d:Lc/a;

    return-object p0
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "PlayList"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lc/a;

    invoke-direct {p1}, Lc/a;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->d:Lc/a;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->i:Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "ListName"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->i:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "ListInfo"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "SourceName"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iput-object p1, p0, Lc/b;->c:Ljava/lang/String;

    return-void

    :cond_3
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "SearchUrl"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iput-object p1, p0, Lc/b;->d:Ljava/lang/String;

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "TrackNumber"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lc/b;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iput p3, p0, Lc/b;->h:I

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string v0, "Quality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :try_start_1
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lc/b;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iput p3, p0, Lc/b;->e:I

    goto/16 :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string v0, "UpdateTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :try_start_2
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lc/b;->f:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lc/b;->f:J

    goto :goto_0

    :cond_7
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string v0, "LastPlayIndex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :try_start_3
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lc/b;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iput p3, p0, Lc/b;->g:I

    goto :goto_0

    :cond_8
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "Tracks"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->d:Lc/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/a;->a:Ljava/util/ArrayList;

    return-void

    :cond_9
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "TrackRoot"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->h:Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->g:Ljava/lang/StringBuffer;

    return-void

    :cond_a
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "URL"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->h:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_b
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p3, "Metadata"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
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

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p2, "ListName"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lc/b;

    invoke-direct {p1}, Lc/b;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->e:Lc/b;

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->i:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lc/b;->b:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p2, "ListInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->d:Lc/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p2, "Metadata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/AlbumInfoXmlParse;->a(Ljava/lang/String;)Lb/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->f:Lb/a;

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->h:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lb/a;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    const-string p2, "TrackRoot"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->f:Lb/a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->d:Lc/a;

    iget-object p0, p0, Lc/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/a$a;->j:Ljava/lang/String;

    return-void
.end method
