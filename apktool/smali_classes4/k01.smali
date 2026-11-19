.class public final synthetic Lk01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lk01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk01;->d:I

    iput-object p2, p0, Lk01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;II)V
    .locals 0

    .line 11
    iput p3, p0, Lk01;->b:I

    iput-object p1, p0, Lk01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    iput p2, p0, Lk01;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lk01;->b:I

    const-string v1, "MCU+PAS+"

    const/16 v2, 0xb

    const/4 v3, 0x0

    const-string v4, "&"

    iget v5, p0, Lk01;->d:I

    iget-object p0, p0, Lk01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->I:Lcom/linkplay/passthrough/LPPassthrough;

    if-eqz p0, :cond_2

    const/16 p1, 0xa

    if-ge v5, p1, :cond_0

    const-string p1, "00"

    :goto_0
    invoke-static {v5, p1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-gt p1, v5, :cond_1

    const/16 p1, 0x64

    if-ge v5, p1, :cond_1

    const-string p1, "0"

    goto :goto_0

    :cond_1
    const-string p1, "100"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MCU+VOL+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/passthrough/LPPassthrough;->write(Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getPlayer()Lcom/linkplay/core/device/ILPDevicePlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setupPlayProgress$1$onStopTrackingTouch$1$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setupPlayProgress$1$onStopTrackingTouch$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V

    invoke-interface {p1, v5, v0}, Lcom/linkplay/core/device/ILPDevicePlayer;->setProgress(ILcom/linkplay/core/listener/LPDevicePlayerListener;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->I:Lcom/linkplay/passthrough/LPPassthrough;

    if-eqz p0, :cond_6

    :goto_2
    if-ge v3, v2, :cond_5

    if-ne v5, v3, :cond_4

    add-int/lit8 v3, v3, 0x65

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v3, 0x6a

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/passthrough/LPPassthrough;->write(Ljava/lang/String;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->I:Lcom/linkplay/passthrough/LPPassthrough;

    if-eqz p0, :cond_9

    :goto_4
    if-ge v3, v2, :cond_8

    if-ne v5, v3, :cond_7

    add-int/lit16 v3, v3, 0xc9

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const/16 v3, 0xce

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/passthrough/LPPassthrough;->write(Ljava/lang/String;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
