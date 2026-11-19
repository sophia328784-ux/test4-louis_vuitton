.class public final Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public final c:Z

.field public d:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public k:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 30
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->f:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g:J

    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->c:Z

    invoke-virtual {p0, p3, p4, p5, p6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->r(JJ)V

    return-void
.end method

.method public static h(Landroidx/media3/exoplayer/FormatHolder;JJ)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/media3/common/Format;->K:I

    iget v2, v0, Landroidx/media3/common/Format;->J:I

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move v2, p2

    :cond_2
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, p3, v3

    if-eqz p1, :cond_3

    move v1, p2

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iput v2, p1, Landroidx/media3/common/Format$Builder;->I:I

    iput v1, p1, Landroidx/media3/common/Format$Builder;->J:I

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p0

    return p0
.end method

.method public final c()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->c()J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->k:Z

    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v2, :cond_0

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_1

    cmp-long p0, v0, v3

    if-eqz p0, :cond_1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_1

    cmp-long p0, v0, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    :goto_0
    return-wide v3
.end method

.method public final d(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 9

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v3, p3, Landroidx/media3/exoplayer/SeekParameters;->a:J

    const-wide/16 v5, 0x0

    sub-long v7, p1, v0

    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, Landroidx/media3/exoplayer/SeekParameters;->b:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    move-wide v6, v4

    goto :goto_1

    :cond_1
    sub-long/2addr v4, p1

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v2

    iget-wide v4, p3, Landroidx/media3/exoplayer/SeekParameters;->a:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, Landroidx/media3/exoplayer/SeekParameters;->b:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {p3, v0, v1, v2, v3}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    :goto_2
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->d(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->f:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean v2, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->b:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->e(J)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long p2, v2, v0

    if-eqz p2, :cond_2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_2
    return-wide p0
.end method

.method public final f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    array-length v1, v8

    new-array v1, v1, [Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v8

    new-array v4, v1, [Landroidx/media3/exoplayer/source/SampleStream;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v8, v1

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v10, v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    aput-object v10, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/source/MediaPeriod;->f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v11

    iget-wide v13, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    const/4 v3, 0x0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v5, v13, v15

    if-eqz v5, :cond_2

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->q()Z

    move-result v5

    if-eqz v5, :cond_5

    cmp-long v5, v11, v6

    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    if-eqz v5, :cond_5

    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v2, v6

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v7

    iget-object v11, v7, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v7, v7, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v11, v7}, Landroidx/media3/common/MimeTypes;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_3
    move-wide v5, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->f:J

    const/4 v1, 0x0

    :goto_5
    array-length v2, v8

    if-ge v1, v2, :cond_9

    aget-object v2, v4, v1

    iget-object v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    if-nez v2, :cond_6

    aput-object v3, v5, v1

    goto :goto_6

    :cond_6
    aget-object v6, v5, v1

    if-eqz v6, :cond_7

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    if-eq v6, v2, :cond_8

    :cond_7
    new-instance v6, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    invoke-direct {v6, v0, v2}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;Landroidx/media3/exoplayer/source/SampleStream;)V

    aput-object v6, v5, v1

    :cond_8
    :goto_6
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->e:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v2, v2, v1

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-wide v9
.end method

.method public final g()J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->q()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->f:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->f:J

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-eqz p0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->g()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_3
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    :goto_0
    return-wide v1

    :cond_4
    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g:J

    return-wide v3
.end method

.method public final j(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->j:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->d:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->j(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->j:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->k()V

    return-void

    :cond_0
    throw v0
.end method

.method public final l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->d:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->m()Z

    move-result p0

    return p0
.end method

.method public final o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->d:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public final p()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->p()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public final q()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(JJ)V
    .locals 3

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->c:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p3, p4}, Landroidx/media3/exoplayer/source/MediaPeriod;->i(J)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->k:Z

    return-void

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Period updating end positions not supported, %s!=%s"

    invoke-static {p1, p0}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final s()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->k:Z

    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v2, :cond_0

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_1

    cmp-long p0, v0, v3

    if-eqz p0, :cond_1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_1

    cmp-long p0, v0, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    :goto_0
    return-wide v3
.end method

.method public final u(JZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->u(JZ)V

    return-void
.end method

.method public final v(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->v(J)V

    return-void
.end method
