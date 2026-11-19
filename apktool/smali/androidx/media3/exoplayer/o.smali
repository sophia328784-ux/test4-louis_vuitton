.class public final synthetic Landroidx/media3/exoplayer/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput p2, p0, Landroidx/media3/exoplayer/o;->c:I

    iput-boolean p3, p0, Landroidx/media3/exoplayer/o;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    iget v2, p0, Landroidx/media3/exoplayer/o;->c:I

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/o;->d:Z

    invoke-interface {v1, v2, v0, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->n0(IIZ)V

    return-void
.end method
