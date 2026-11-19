.class public final Landroidx/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/LoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final b:Landroidx/media3/common/Timeline;

.field public final c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final d:J

.field public final e:F

.field public final f:Z

.field public final g:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->a:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object p2, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->b:Landroidx/media3/common/Timeline;

    iput-object p3, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-wide p6, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->d:J

    iput p8, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->e:F

    iput-boolean p10, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->f:Z

    iput-wide p11, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->g:J

    return-void
.end method
