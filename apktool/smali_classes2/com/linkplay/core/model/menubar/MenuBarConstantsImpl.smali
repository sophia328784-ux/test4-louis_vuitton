.class public Lcom/linkplay/core/model/menubar/MenuBarConstantsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/model/menubar/MenuBarConstants;


# static fields
.field private static final NO:Z = false

.field private static final UI8:I = 0x20

.field private static final YES:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMediaType2PLM(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "line-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "secord_linein"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const-string v0, "fm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x7

    return p0

    :cond_4
    const-string v0, "songlist-local"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x270f

    return p0

    :cond_5
    const-string v0, "songlist-local_tf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x270e

    return p0

    :cond_6
    const-string v0, "TFcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "optical"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    const-string v0, "external_usb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x3

    return p0

    :cond_9
    const-string v0, "external_tfcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_0
    const/16 p0, 0xd

    return p0

    :cond_a
    const-string v0, "RCA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, 0x5

    return p0

    :cond_b
    const-string v0, "CO_AXIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x6

    return p0

    :cond_c
    const-string v0, "xlr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x9

    return p0

    :cond_d
    const-string v0, "HDMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0xa

    return p0

    :cond_e
    const-string v0, "CD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xb

    return p0

    :cond_f
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static hexToLong(Ljava/lang/String;)J
    .locals 4

    const-string v0, ""

    const/16 v1, 0x10

    :try_start_0
    const-string v2, "^0[x|X]"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\""

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "7ffffffe"

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    :goto_0
    const-string p0, "7FFFFFFF"

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static supportBTTransmitter(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->cap1:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static supportCapability(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->capability:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static supportLanguage(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->languages:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static supportPLM(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    iget v0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->plms:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x13

    invoke-static {p0, v0}, Lcom/linkplay/core/model/menubar/MenuBarConstantsImpl;->supportCapability(Lcom/linkplay/core/model/menubar/MenuBar;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->plms:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static supportSettingTime(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->cap1:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static supportShutdownTimer(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->capability:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static supportStream(Lcom/linkplay/core/model/menubar/MenuBar;I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget p0, p0, Lcom/linkplay/core/model/menubar/MenuBar;->streams:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method
