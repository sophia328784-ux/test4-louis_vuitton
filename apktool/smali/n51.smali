.class public final synthetic Ln51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# virtual methods
.method public final find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;

    invoke-static {p1}, Landroidx/camera/video/internal/utils/CodecUtil;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->k(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0
    :try_end_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p1, "VideoEncoderInfoImpl"

    const/4 v0, 0x5

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-object p0
.end method
