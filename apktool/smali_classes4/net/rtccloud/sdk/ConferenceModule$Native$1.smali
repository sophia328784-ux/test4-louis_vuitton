.class Lnet/rtccloud/sdk/ConferenceModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/ConferenceModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/ConferenceModule$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    invoke-interface {v0}, Lnet/rtccloud/sdk/Call$Native;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/rtccloud/sdk/ConferenceModule$Native$1$1;

    invoke-direct {v1, p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native$1$1;-><init>(Lnet/rtccloud/sdk/ConferenceModule$Native$1;Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public passiveStreamsOnly(Z)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nPassiveStreamsOnly(Z)V

    return-void
.end method

.method public setMirrorMode(Z)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetMirrorMode(Z)V

    return-void
.end method
