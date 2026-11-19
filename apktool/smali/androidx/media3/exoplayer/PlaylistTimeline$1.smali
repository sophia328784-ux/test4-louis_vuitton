.class Landroidx/media3/exoplayer/PlaylistTimeline$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "SourceFile"


# instance fields
.field public final f:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->f:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->e:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget p1, v1, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->f:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v2, p2, Landroidx/media3/common/Timeline$Period;->a:Ljava/lang/Object;

    iget-object v3, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    iget v4, p2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-wide v5, p2, Landroidx/media3/common/Timeline$Period;->d:J

    iget-wide v7, p2, Landroidx/media3/common/Timeline$Period;->e:J

    sget-object v9, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    return-object v1

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v1, Landroidx/media3/common/Timeline$Period;->f:Z

    return-object v1
.end method
