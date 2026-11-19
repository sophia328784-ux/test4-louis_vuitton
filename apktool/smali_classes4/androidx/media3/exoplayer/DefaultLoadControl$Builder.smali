.class public final Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public m:I

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->a:Ljava/util/HashMap;

    sget-object v1, Landroidx/media3/exoplayer/analytics/PlayerId;->c:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/PlayerId;->a:Ljava/lang/String;

    const/high16 v2, 0x8980000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xc350

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->c:I

    const/16 v1, 0x3e8

    iput v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->d:I

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->e:I

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->f:I

    iput v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->g:I

    iput v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->h:I

    const/16 v0, 0x7d0

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->i:I

    iput v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->l:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->m:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->n:Z

    return-void
.end method
