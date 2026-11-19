.class Lnet/rtccloud/sdk/Call$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/Call$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/Call$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public control(Lnet/rtccloud/sdk/Call$Control;II)V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/rtccloud/sdk/Call$Native$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/rtccloud/sdk/Call$Native$1$1;-><init>(Lnet/rtccloud/sdk/Call$Native$1;Lnet/rtccloud/sdk/Call$Control;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executor()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public qualityIndicator()Lnet/rtccloud/sdk/Call$QualityIndicator;
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetCallQualityIndicator()Lnet/rtccloud/sdk/Call$QualityIndicator;

    move-result-object p0

    return-object p0
.end method

.method public startTranslation()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nStartTranslation()Z

    move-result p0

    return p0
.end method

.method public stopTranslation()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nStopTranslation()Z

    move-result p0

    return p0
.end method
