.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.method public constructor <init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getRecordingStartingTime$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getMediaCaptureParameters$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_timer$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;->toTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getTimerHandler$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
