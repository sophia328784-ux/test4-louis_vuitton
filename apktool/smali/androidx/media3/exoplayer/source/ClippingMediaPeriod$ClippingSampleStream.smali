.class final Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/SampleStream;

.field public b:Z

.field public final synthetic c:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->c:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->a()V

    return-void
.end method

.method public final b(J)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->c:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->b(J)I

    move-result p0

    return p0
.end method

.method public final c(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->c:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->q()Z

    move-result v5

    const/4 v6, -0x3

    if-eqz v5, :cond_0

    return v6

    :cond_0
    iget-boolean v5, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->k:Z

    iget-object v7, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    const/4 v8, -0x5

    if-eqz v5, :cond_2

    invoke-interface {v7, v1, v2, v3}, Landroidx/media3/exoplayer/source/SampleStream;->c(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    if-ne v0, v8, :cond_1

    iget-wide v2, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h:J

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h(Landroidx/media3/exoplayer/FormatHolder;JJ)V

    return v8

    :cond_1
    return v0

    :cond_2
    iget-boolean v5, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->b:Z

    const/4 v9, 0x4

    const/4 v10, -0x4

    if-eqz v5, :cond_3

    iput v9, v2, Landroidx/media3/decoder/Buffer;->b:I

    return v10

    :cond_3
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->s()J

    move-result-wide v11

    invoke-interface {v7, v1, v2, v3}, Landroidx/media3/exoplayer/source/SampleStream;->c(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v3

    iget-wide v13, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v13, v9

    if-eqz v13, :cond_4

    if-eq v3, v6, :cond_4

    iput-wide v9, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->g:J

    :cond_4
    if-ne v3, v8, :cond_5

    iget-wide v2, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h:J

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->h(Landroidx/media3/exoplayer/FormatHolder;JJ)V

    return v8

    :cond_5
    iget-wide v8, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->i:J

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v1, v8, v13

    if-eqz v1, :cond_8

    const/4 v7, -0x4

    if-ne v3, v7, :cond_6

    move-wide v15, v8

    iget-wide v7, v2, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    cmp-long v1, v7, v15

    if-gez v1, :cond_7

    :cond_6
    if-ne v3, v6, :cond_8

    cmp-long v1, v11, v13

    if-nez v1, :cond_8

    iget-boolean v1, v2, Landroidx/media3/decoder/DecoderInputBuffer;->f:Z

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    const/4 v5, 0x4

    iput v5, v2, Landroidx/media3/decoder/Buffer;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->b:Z

    const/4 v7, -0x4

    return v7

    :cond_8
    return v3
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->c:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
