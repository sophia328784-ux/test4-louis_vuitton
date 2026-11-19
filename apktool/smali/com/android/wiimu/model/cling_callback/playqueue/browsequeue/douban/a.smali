.class public Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;
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

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    new-instance p1, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-direct {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;-><init>()V

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

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_2
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "SearchUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_4
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "PicUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_6
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Quality"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_8
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "UpdateTime"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_a
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_b
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "LastPlayIndex"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_c
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_d
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "TrackNumber"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_e
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_f
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Login_username"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_10

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_10
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Login_password"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_12

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_12
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_13
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "AutoGenerate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_14
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "StationLimit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_16

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_16
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_17
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "MarkSearch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_18

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_18
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "StationID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_1a
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Description"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1c

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_1c
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1d
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Group_name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1e

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_1e
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1f
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Collected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_20

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_20
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_21
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "MaxTrackNumber"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_22

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_22
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_23
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "CurrentPage"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_24

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_24
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_25
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "TotalPages"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_26

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_26
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_27
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Tracks"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_28

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_28
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_29
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "Icon"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_2a
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2b
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "UserID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_2c
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2d
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "LikeNum"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2e

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_2e
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2f
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "BannedNum"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_30

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_30
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_31
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "PlayedNum"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_32

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_32
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_33
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "ProStatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_34

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_34
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_35
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    const-string p2, "ProExprieDate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_36

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_36
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37
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

    if-eqz p3, :cond_30

    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Name:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Source:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p1, "SearchUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SearchUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2
    const-string p1, "PicUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_3

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PicUrl:Ljava/lang/String;

    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_4
    const-string p1, "Quality"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Quality:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_5
    const-string p1, "UpdateTime"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->UpdateTime:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_6
    const-string p1, "LastPlayIndex"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->LastPlayIndex:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_7
    const-string p1, "TrackNumber"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->TrackNumber:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_8
    const-string p1, "Login_username"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_9

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->a:Ljava/lang/String;

    :cond_9
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_a
    const-string p1, "Login_password"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_b

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->b:Ljava/lang/String;

    :cond_b
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_c
    const-string p1, "AutoGenerate"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_d

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->c:Ljava/lang/String;

    :cond_d
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_e
    const-string p1, "StationLimit"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_f

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->d:Ljava/lang/String;

    :cond_f
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_10
    const-string p1, "MarkSearch"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_11

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->e:Ljava/lang/String;

    :cond_11
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_12
    const-string p1, "StationID"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_13

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->f:Ljava/lang/String;

    :cond_13
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_14
    const-string p1, "Description"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_15

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->g:Ljava/lang/String;

    :cond_15
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_16
    const-string p1, "Group_name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_17

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->h:Ljava/lang/String;

    :cond_17
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_18
    const-string p1, "Collected"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_19

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->i:Ljava/lang/String;

    :cond_19
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_1a
    const-string p1, "MaxTrackNumber"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_1b

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->j:Ljava/lang/String;

    :cond_1b
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_1c
    const-string p1, "CurrentPage"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_1d

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->k:Ljava/lang/String;

    :cond_1d
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_1e
    const-string p1, "TotalPages"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_1f

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->l:Ljava/lang/String;

    :cond_1f
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_20
    const-string p1, "Tracks"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_21

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->m:Ljava/lang/String;

    :cond_21
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_22
    const-string p1, "Icon"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_23

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->n:Ljava/lang/String;

    :cond_23
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_24
    const-string p1, "UserID"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_25

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->o:Ljava/lang/String;

    :cond_25
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_26
    const-string p1, "LikeNum"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_27

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->p:Ljava/lang/String;

    :cond_27
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_28
    const-string p1, "BannedNum"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_29

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->q:Ljava/lang/String;

    :cond_29
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2a
    const-string p1, "PlayedNum"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_2b

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->r:Ljava/lang/String;

    :cond_2b
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2c
    const-string p1, "ProStatus"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_2d

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->s:Ljava/lang/String;

    :cond_2d
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2e
    const-string p1, "ProExprieDate"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    instance-of p3, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    if-eqz p3, :cond_2f

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/b;->t:Ljava/lang/String;

    :cond_2f
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->d:Ljava/lang/StringBuffer;

    :cond_30
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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/douban/a;->c:Ljava/lang/String;

    return-void
.end method
