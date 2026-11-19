.class Lnet/rtccloud/sdk/UtilsModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/UtilsModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/UtilsModule$Native;
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
.method public checkCloudConnection()I
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nCheckCloudConnection()I

    move-result p0

    return p0
.end method

.method public setDeadPartyTimeout(I)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetDeadPartyTimeout(I)Z

    move-result p0

    return p0
.end method

.method public setEnableLocalIce(I)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetEnableLocalIce(I)Z

    move-result p0

    return p0
.end method

.method public setEnableUSAPTURN(I)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetEnableUSAPTURN(I)Z

    move-result p0

    return p0
.end method

.method public setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Audio;)Z
    .locals 0

    .line 17
    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusComplexity()I

    move-result p0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusBitrate()I

    move-result p1

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/Jni;->nSetAudioEncodingParameters(II)Z

    move-result p0

    return p0
.end method

.method public setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Video;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->vp8CpuUsage()I

    move-result p0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->threads()I

    move-result v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->noiseSensitivity()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lnet/rtccloud/sdk/Jni;->nSetVideoEncodingParameters(III)Z

    move-result p0

    return p0
.end method

.method public swapFathers()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nSwapFathers()V

    return-void
.end method
