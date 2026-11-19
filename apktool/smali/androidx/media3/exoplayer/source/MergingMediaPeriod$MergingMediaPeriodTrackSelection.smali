.class final Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergingMediaPeriodTrackSelection"
.end annotation


# instance fields
.field public final b:Landroidx/media3/common/TrackGroup;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/TrackGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;-><init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    return-void
.end method


# virtual methods
.method public final e(I)Landroidx/media3/common/Format;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->f(I)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p0, p1}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p0}, Landroidx/media3/common/TrackGroup;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final m()Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    return-object p0
.end method

.method public final s()Landroidx/media3/common/Format;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->a:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;->b:Landroidx/media3/common/TrackGroup;

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object p0, p0, v0

    return-object p0
.end method
