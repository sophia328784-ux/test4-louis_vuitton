.class public Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/model/cling_callback/playqueue/xml/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lc/c;

.field c:I

.field d:Lc/b;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->b:Lc/c;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->c:I

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    const-string v0, "ListRoot"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->e:Ljava/lang/String;

    const-string v0, "<ListRoot>"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->f:Ljava/lang/String;

    const-string v0, "</ListRoot>"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lc/c;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->b:Lc/c;

    return-object p0
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "PlayQueue"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->b:Lc/c;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "TotalQueue"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->b:Lc/c;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "CurrentPlayList"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->c:I

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "Name"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->c:I

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->b:Lc/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->c:I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    if-eqz p0, :cond_c

    iput-object p1, p0, Lc/b;->b:Ljava/lang/String;

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "ListRoot"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Lc/b;

    invoke-direct {p1}, Lc/b;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "ListInfo"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "Source"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    iput-object p1, p0, Lc/b;->c:Ljava/lang/String;

    return-void

    :cond_7
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "SearchUrl"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    iput-object p1, p0, Lc/b;->d:Ljava/lang/String;

    return-void

    :cond_8
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "Quality"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/b;->e:I

    return-void

    :cond_9
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "UpdateTime"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lc/b;->f:J

    return-void

    :cond_a
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "LastPlayIndex"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/b;->g:I

    return-void

    :cond_b
    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p3, "TrackNumber"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/b;->h:I

    :cond_c
    :goto_0
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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    const-string p1, "ListRoot"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->b:Lc/c;

    iget-object p1, p1, Lc/c;->a:Ljava/util/LinkedHashMap;

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->d:Lc/b;

    iget-object p3, p2, Lc/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/xml/b$a;->a:Ljava/lang/String;

    return-void
.end method
