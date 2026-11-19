.class public final synthetic Landroidx/media3/exoplayer/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/image/ImageMetadataListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/q;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0x25

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->b(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    :cond_0
    return-void
.end method
