.class public final Landroidx/media3/exoplayer/source/MediaLoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroidx/media3/common/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public constructor <init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->a:I

    .line 22
    iput p2, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->b:I

    .line 23
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->c:Landroidx/media3/common/Format;

    .line 24
    iput p4, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->d:I

    .line 25
    iput-object p5, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->e:Ljava/lang/Object;

    .line 26
    iput-wide p6, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->f:J

    .line 27
    iput-wide p8, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->g:J

    return-void
.end method
