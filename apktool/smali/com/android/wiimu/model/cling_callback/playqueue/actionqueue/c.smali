.class public Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;
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

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    new-instance p1, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-direct {p1}, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;-><init>()V

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

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "PresetName"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_2
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "PresetKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_4
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "PressType"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_6
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "Volume"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_8
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "SearchUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_a
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_b
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "Login_username"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_c
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_d
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "StationID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_e
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_f
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "Group_name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_10

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_10
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "SrcParent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_12

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_12
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_13
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "AutoGenerate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_14
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "StationLimit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_16

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_16
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_17
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "MarkSearch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_18

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_18
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "Quality"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_1a
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "UpdateTime"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1c

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_1c
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1d
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "LastPlayIndex"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1e

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_1e
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1f
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "RealIndex"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_20

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_20
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_21
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "TrackNumber"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_22

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_22
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_23
    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    const-string p2, "SwitchPageMode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-nez p1, :cond_24

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_24
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
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

    if-eqz p3, :cond_10

    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Source:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const-string p1, "PressType"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->PressType:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p1, "Volume"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_2
    const-string p1, "SearchUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SearchUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_3
    const-string p1, "Login_username"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_4
    const-string p1, "StationID"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_5
    const-string p1, "Group_name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_6
    const-string p1, "SrcParent"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->SrcParent:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_7
    const-string p1, "AutoGenerate"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_8
    const-string p1, "StationLimit"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_9
    const-string p1, "MarkSearch"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->g:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_a
    const-string p1, "Quality"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Quality:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_b
    const-string p1, "UpdateTime"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->UpdateTime:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_c
    const-string p1, "LastPlayIndex"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->LastPlayIndex:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_d
    const-string p1, "RealIndex"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->h:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_e
    const-string p1, "TrackNumber"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->TrackNumber:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    return-void

    :cond_f
    const-string p1, "SwitchPageMode"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/a;->b:Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    check-cast p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/d;->i:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->d:Ljava/lang/StringBuffer;

    :cond_10
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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;->c:Ljava/lang/String;

    return-void
.end method
