.class public final synthetic Landroidx/media3/extractor/text/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/c;->b:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    iput-wide p2, p0, Landroidx/media3/extractor/text/c;->c:J

    iput p4, p0, Landroidx/media3/extractor/text/c;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    iget-object v2, v0, Landroidx/media3/extractor/text/c;->b:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    iget-object v3, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->i:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->c:Landroidx/media3/extractor/text/CueEncoder;

    iget-object v4, v1, Landroidx/media3/extractor/text/CuesWithTiming;->a:Lcom/google/common/collect/ImmutableList;

    iget-wide v5, v1, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Landroidx/media3/extractor/text/CueEncoder;->a(Lcom/google/common/collect/ImmutableList;J)[B

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->d:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    invoke-virtual {v4, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    iget-object v5, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    array-length v6, v3

    invoke-interface {v5, v6, v4}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-wide v4, v1, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    iget-object v6, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->i:Landroidx/media3/common/Format;

    iget-wide v7, v0, Landroidx/media3/extractor/text/c;->c:J

    const/4 v9, 0x1

    const-wide v10, 0x7fffffffffffffffL

    if-nez v1, :cond_1

    iget-wide v4, v6, Landroidx/media3/common/Format;->t:J

    cmp-long v1, v4, v10

    if-nez v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_1
    move-wide v11, v7

    goto :goto_2

    :cond_1
    iget-wide v12, v6, Landroidx/media3/common/Format;->t:J

    cmp-long v1, v12, v10

    if-nez v1, :cond_2

    add-long/2addr v7, v4

    goto :goto_1

    :cond_2
    add-long v7, v4, v12

    goto :goto_1

    :goto_2
    iget-object v10, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    iget v0, v0, Landroidx/media3/extractor/text/c;->d:I

    or-int/lit8 v13, v0, 0x1

    array-length v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method
