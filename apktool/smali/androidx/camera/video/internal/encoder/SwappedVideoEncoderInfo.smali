.class public Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# instance fields
.field public final a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->a()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->a(Z)V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->a()Z

    move-result p0

    return p0
.end method

.method public final b(I)Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->h(I)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->f()I

    move-result p0

    return p0
.end method

.method public final d(II)Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0, p2, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->d(II)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->c()I

    move-result p0

    return p0
.end method

.method public final g()Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->g()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->b(I)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->j()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public final j()Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->a:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->i()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method
