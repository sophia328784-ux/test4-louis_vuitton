.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1",
        "Landroid/os/CountDownTimer;",
        "onTick",
        "",
        "millisUntilFinished",
        "",
        "onFinish",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;J)V
    .locals 2

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    const-wide/16 v0, 0x32

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getMediaCaptureParameters$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$stopRecording(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getMediaCaptureParameters$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_progressValue$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    rsub-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
