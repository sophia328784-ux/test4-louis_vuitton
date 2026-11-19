.class Lnet/rtccloud/sdk/AudioModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/AudioModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AudioModule$Native;
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
.method public mutePlayer(Z)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nMutePlaying(Z)V

    return-void
.end method

.method public muteRecorder(Z)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nMuteRecording(Z)V

    return-void
.end method

.method public start(IIIIZZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, Lnet/rtccloud/sdk/Jni;->nStartAudio(IIIIZZ)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nStopAudio()V

    return-void
.end method
