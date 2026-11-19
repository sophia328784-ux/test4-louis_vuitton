.class public final Lcom/lightup/sdk/animation/CreatorProject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        ">;"
    }
.end annotation


# static fields
.field private static format:Ljava/text/SimpleDateFormat;


# instance fields
.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private index:I

.field private lastModifiedDate:Ljava/util/Date;

.field private loop:Z

.field private name:Ljava/lang/String;

.field private triggerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lightup/sdk/animation/CreatorProject;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    iput p3, p0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    :try_start_0
    sget-object p1, Lcom/lightup/sdk/animation/CreatorProject;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object p5, p0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->loop:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    .line 31
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;

    .line 32
    const-string p1, ""

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/lightup/sdk/animation/CreatorProject;->loop:Z

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    return-void
.end method

.method public static toObject(Ljava/lang/String;)Lcom/lightup/sdk/animation/CreatorProject;
    .locals 3

    new-instance v0, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-direct {v0}, Lcom/lightup/sdk/animation/CreatorProject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    const-string p0, "name"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    const-string p0, "triggerIndex"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    sget-object p0, Lcom/lightup/sdk/animation/CreatorProject;->format:Ljava/text/SimpleDateFormat;

    const-string v2, "lastModifiedDate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    iput-object p0, v0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;

    const-string p0, "imageUrl"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    const-string p0, "index"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/lightup/sdk/animation/CreatorProject;->index:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/lightup/sdk/animation/CreatorProject;)I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    iget p1, p1, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/animation/CreatorProject;->compareTo(Lcom/lightup/sdk/animation/CreatorProject;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/lightup/sdk/animation/CreatorProject;

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDrawableId()I
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/animation/CreatorProject;->getDrawableId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDrawableId(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "CLOUDS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "PAINT CAN RED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "WARM RED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "PRISM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "WARM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "COLD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "RED DOOR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "PAINT CAN YELLOW"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "PAINT CAN PURPLE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string p0, "PRISM_KP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_a
    const-string p0, "PAINT CAN ORANGE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_b
    const-string p0, "PAINT CAN GREEN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_c
    const-string p0, "PAINT CAN RAINBOW"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_d
    const-string p0, "PRISM2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const-string p0, "PAINT CAN TURQUOISE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_f
    const-string p0, "ICEBLUE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_0
    const p0, 0x7f0802b1

    packed-switch v0, :pswitch_data_0

    return p0

    :pswitch_0
    const p0, 0x7f0802a7

    return p0

    :pswitch_1
    const p0, 0x7f0802ae

    return p0

    :pswitch_2
    const p0, 0x7f0802b6

    :pswitch_3
    return p0

    :pswitch_4
    const p0, 0x7f0802b5

    return p0

    :pswitch_5
    const p0, 0x7f0802a8

    return p0

    :pswitch_6
    const p0, 0x7f0802b4

    return p0

    :pswitch_7
    const p0, 0x7f0802b0

    return p0

    :pswitch_8
    const p0, 0x7f0802ac

    return p0

    :pswitch_9
    const p0, 0x7f0802b3

    return p0

    :pswitch_a
    const p0, 0x7f0802ab

    return p0

    :pswitch_b
    const p0, 0x7f0802aa

    return p0

    :pswitch_c
    const p0, 0x7f0802ad

    return p0

    :pswitch_d
    const p0, 0x7f0802b2

    return p0

    :pswitch_e
    const p0, 0x7f0802af

    return p0

    :pswitch_f
    const p0, 0x7f0802a9

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7418eabb -> :sswitch_f
        -0x72d819d1 -> :sswitch_e
        -0x72d656cf -> :sswitch_d
        -0x4e36abbc -> :sswitch_c
        -0x4b8326ef -> :sswitch_b
        -0x173ca240 -> :sswitch_a
        -0x169b2cbd -> :sswitch_9
        -0x1555c0b2 -> :sswitch_8
        -0x6de63fa -> :sswitch_7
        -0x1e51203 -> :sswitch_6
        0x1fa6e4 -> :sswitch_5
        0x288a85 -> :sswitch_4
        0x48dbb21 -> :sswitch_3
        0x4c358856 -> :sswitch_2
        0x4ec5f21f -> :sswitch_1
        0x76a8dcde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    return p0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;

    return-object p0
.end method

.method public getLastModifiedDateAsString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/animation/CreatorProject;->format:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->loop:Z

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggerIndex()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    return-void
.end method

.method public setLastModifiedDate(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/lightup/sdk/animation/CreatorProject;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->loop:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    return-void
.end method

.method public setTriggerIndex(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "triggerIndex"

    iget v2, p0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastModifiedDate"

    sget-object v2, Lcom/lightup/sdk/animation/CreatorProject;->format:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "index"

    iget p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreatorProject{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lightup/sdk/animation/CreatorProject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/animation/CreatorProject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', triggerIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lightup/sdk/animation/CreatorProject;->triggerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/animation/CreatorProject;->lastModifiedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/animation/CreatorProject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', index=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lightup/sdk/animation/CreatorProject;->index:I

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
