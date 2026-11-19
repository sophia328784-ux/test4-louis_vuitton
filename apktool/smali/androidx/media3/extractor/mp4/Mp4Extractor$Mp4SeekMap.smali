.class final Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackAwareSeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4SeekMap"
.end annotation


# instance fields
.field public final a:J

.field public final b:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

.field public final c:I


# direct methods
.method public constructor <init>(J[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->a:J

    iput-object p3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->b:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput p4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->c:I

    return-void
.end method


# virtual methods
.method public final c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->b:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v3

    if-nez v4, :cond_0

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v1, Landroidx/media3/extractor/SeekPoint;->c:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    iget v0, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->c:I

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    if-eq v0, v6, :cond_4

    aget-object v9, v3, v0

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    sget v10, Landroidx/media3/extractor/mp4/Mp4Extractor;->G:I

    invoke-virtual {v9, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    move-result v10

    if-ne v10, v6, :cond_1

    invoke-virtual {v9, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v10

    :cond_1
    iget-object v11, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    iget-object v12, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    if-ne v10, v6, :cond_2

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v1, Landroidx/media3/extractor/SeekPoint;->c:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_2
    aget-wide v13, v12, v10

    aget-wide v15, v11, v10

    cmp-long v17, v13, v1

    if-gez v17, :cond_3

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    iget v4, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ge v10, v4, :cond_5

    invoke-virtual {v9, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v1

    if-eq v1, v6, :cond_5

    if-eq v1, v10, :cond_5

    aget-wide v4, v12, v1

    aget-wide v7, v11, v1

    goto :goto_1

    :cond_3
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_4
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, 0x7fffffffffffffffL

    move-wide v13, v1

    :cond_5
    :goto_0
    move-wide/from16 v4, v17

    :goto_1
    const/4 v1, 0x0

    move-wide v9, v15

    :goto_2
    array-length v2, v3

    if-ge v1, v2, :cond_c

    if-eq v1, v0, :cond_b

    aget-object v2, v3, v1

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    sget v11, Landroidx/media3/extractor/mp4/Mp4Extractor;->G:I

    invoke-virtual {v2, v13, v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    move-result v11

    iget-object v12, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    if-ne v11, v6, :cond_6

    invoke-virtual {v2, v13, v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v11

    :cond_6
    if-ne v11, v6, :cond_7

    move-wide v15, v7

    goto :goto_3

    :cond_7
    move-wide v15, v7

    aget-wide v6, v12, v11

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :goto_3
    cmp-long v6, v4, v17

    if-eqz v6, :cond_a

    invoke-virtual {v2, v4, v5}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    invoke-virtual {v2, v4, v5}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v6

    :cond_8
    if-ne v6, v7, :cond_9

    goto :goto_4

    :cond_9
    aget-wide v11, v12, v6

    move-wide v7, v15

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_5

    :cond_a
    :goto_4
    move-wide v7, v15

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v6, -0x1

    goto :goto_2

    :cond_c
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v13, v14, v9, v10}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v1, v4, v17

    if-nez v1, :cond_d

    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1

    :cond_d
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v1, v4, v5, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v2
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->a:J

    return-wide v0
.end method
