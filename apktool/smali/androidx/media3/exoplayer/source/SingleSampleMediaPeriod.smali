.class final Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;,
        Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/MediaPeriod;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/media3/datasource/DataSpec;

.field public final c:Landroidx/media3/datasource/DataSource$Factory;

.field public final d:Landroidx/media3/datasource/TransferListener;

.field public final e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final g:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final h:Ljava/util/ArrayList;

.field public final i:J

.field public final j:Landroidx/media3/exoplayer/upstream/Loader;

.field public final k:Landroidx/media3/common/Format;

.field public final l:Z

.field public m:Z

.field public n:[B

.field public o:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ZLandroidx/media3/exoplayer/util/ReleasableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->b:Landroidx/media3/datasource/DataSpec;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->c:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->d:Landroidx/media3/datasource/TransferListener;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->k:Landroidx/media3/common/Format;

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->i:J

    iput-object p7, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-boolean p9, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->l:Z

    new-instance p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance p2, Landroidx/media3/common/TrackGroup;

    filled-new-array {p4}, [Landroidx/media3/common/Format;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/media3/common/TrackGroup;-><init>([Landroidx/media3/common/Format;)V

    filled-new-array {p2}, [Landroidx/media3/common/TrackGroup;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->g:Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->h:Ljava/util/ArrayList;

    if-eqz p10, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-direct {p1, p10}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->j:Landroidx/media3/exoplayer/upstream/Loader;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 3

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->m:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->c:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->d:Landroidx/media3/datasource/TransferListener;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->b:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result v0

    invoke-virtual {p1, v1, p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->e(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v11, p6

    move/from16 v1, p7

    move-object/from16 v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v3, v2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    new-instance v12, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v13, v2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->a:J

    iget-object v15, v2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v2, v3, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v4, v3, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v5, v3, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-wide/from16 v22, v5

    invoke-direct/range {v12 .. v23}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v13, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-wide v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->i:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v21

    const/4 v14, 0x1

    const/4 v15, -0x1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->k:Landroidx/media3/common/Format;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v22}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    new-instance v2, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    invoke-direct {v2, v12, v13, v11, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v3, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v3, v7}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result v3

    if-lt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v7

    :goto_1
    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->l:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const-string v1, "Loading failed, treating as end-of-stream."

    invoke-static {v1, v11}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v7, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->m:Z

    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->e:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_2
    move-object v13, v1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    new-instance v1, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v1, v6, v4, v5}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_2

    :goto_3
    iget v1, v13, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->a:I

    if-eqz v1, :cond_4

    if-ne v1, v7, :cond_5

    :cond_4
    move v6, v7

    :cond_5
    xor-int/lit8 v1, v6, 0x1

    const-wide/16 v7, 0x0

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->i:J

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-object v3, v2

    const/4 v2, 0x1

    move-object v4, v3

    const/4 v3, -0x1

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->k:Landroidx/media3/common/Format;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v24, v4

    move-object v4, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v12

    move v12, v1

    move-object/from16 v1, v24

    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-object v13
.end method

.method public final c()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->m:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final d(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public final e(J)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;

    iget v2, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->a:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public final g()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    if-nez p6, :cond_0

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->b:Landroidx/media3/datasource/DataSpec;

    move-wide/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    move-object v6, v3

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->a:J

    iget-object v7, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v8, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v9, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v14, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v4 .. v15}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v6, v4

    :goto_0
    const-wide/16 v12, 0x0

    iget-wide v14, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->i:J

    iget-object v5, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v7, 0x1

    const/4 v8, -0x1

    iget-object v9, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->k:Landroidx/media3/common/Format;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v16, p6

    invoke-virtual/range {v5 .. v16}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->j:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result p0

    return p0
.end method

.method public final o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->j(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final p()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->g:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public final q(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 13

    check-cast p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v0, v0, Landroidx/media3/datasource/StatsDataSource;->b:J

    long-to-int v0, v0

    iput v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->o:I

    iget-object v0, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->d:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->n:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->m:Z

    iget-object v0, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->a:J

    iget-object v4, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v5, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v6, v0, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->o:I

    int-to-long v11, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v8, 0x0

    iget-wide v10, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->i:J

    move-object v2, v1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->k:Landroidx/media3/common/Format;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final s()J
    .locals 2

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->m:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final u(JZ)V
    .locals 0

    return-void
.end method

.method public final v(J)V
    .locals 0

    return-void
.end method

.method public final w(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 14

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->a:J

    iget-object v5, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v6, v1, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v7, v1, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v12, v1, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    iget-wide v11, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->i:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method
