.class public final Landroidx/media3/exoplayer/text/TextRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field public B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field public C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

.field public D:I

.field public final E:Landroid/os/Handler;

.field public final F:Landroidx/media3/exoplayer/text/TextOutput;

.field public final G:Landroidx/media3/exoplayer/FormatHolder;

.field public H:Z

.field public I:Z

.field public J:Landroidx/media3/common/Format;

.field public K:J

.field public L:J

.field public final t:Landroidx/media3/extractor/text/CueDecoder;

.field public final u:Landroidx/media3/decoder/DecoderInputBuffer;

.field public v:Landroidx/media3/exoplayer/text/CuesResolver;

.field public final w:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

.field public x:Z

.field public y:I

.field public z:Landroidx/media3/extractor/text/SubtitleDecoder;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V
    .locals 1

    .line 56
    sget-object v0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/TextOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->w:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    new-instance p1, Landroidx/media3/extractor/text/CueDecoder;

    invoke-direct {p1}, Landroidx/media3/extractor/text/CueDecoder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->t:Landroidx/media3/extractor/text/CueDecoder;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->u:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->G:Landroidx/media3/exoplayer/FormatHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    return-void
.end method


# virtual methods
.method public final K()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->V()V

    iput-wide v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    :cond_0
    return-void
.end method

.method public final M(ZZJ)V
    .locals 0

    iput-wide p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/text/CuesResolver;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->V()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->L:J

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string p3, "application/x-media3-cues"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/media3/decoder/Decoder;->release()V

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->w:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iget-wide p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    invoke-interface {p1, p2, p3}, Landroidx/media3/decoder/Decoder;->d(J)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->flush()V

    iget-wide p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    invoke-interface {p1, p2, p3}, Landroidx/media3/decoder/Decoder;->d(J)V

    :cond_2
    return-void
.end method

.method public final R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string p2, "application/x-media3-cues"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->U()V

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    return-void

    :cond_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->w:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iget-wide p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    invoke-interface {p1, p2, p3}, Landroidx/media3/decoder/Decoder;->d(J)V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    iget p1, p1, Landroidx/media3/common/Format;->M:I

    if-ne p1, p2, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/text/MergingCuesResolver;

    invoke-direct {p1}, Landroidx/media3/exoplayer/text/MergingCuesResolver;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;

    invoke-direct {p1}, Landroidx/media3/exoplayer/text/ReplacingCuesResolver;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    return-void
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "application/x-media3-cues"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Legacy decoding is disabled, can\'t handle %s samples (expected %s)."

    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final V()V
    .locals 4

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    invoke-virtual {p0, v2, v3}, Landroidx/media3/exoplayer/text/TextRenderer;->X(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/TextOutput;

    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/text/TextOutput;->n(Ljava/util/List;)V

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/text/TextOutput;->B(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public final W()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    invoke-virtual {v0, p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final X(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final Y()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->A:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->h()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->h()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    :cond_1
    return-void
.end method

.method public final b(Landroidx/media3/common/Format;)I
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v1, "application/x-media3-cues"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->w:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->b(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->n(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v1, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget p0, p1, Landroidx/media3/common/Format;->P:I

    if-nez p0, :cond_3

    const/4 p0, 0x4

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    :goto_1
    invoke-static {p0, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    return p0
.end method

.method public final g(JJ)V
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-boolean v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->o:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-wide v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->L:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    :cond_0
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    if-eqz v0, :cond_1

    goto/16 :goto_e

    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v5, "application/x-media3-cues"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v5, v1, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/TextOutput;

    iget-object v6, v1, Landroidx/media3/exoplayer/text/TextRenderer;->E:Landroid/os/Handler;

    const/4 v7, 0x4

    const/4 v8, -0x4

    iget-object v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->G:Landroidx/media3/exoplayer/FormatHolder;

    const/4 v10, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->u:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v9, v0, v10}, Landroidx/media3/exoplayer/BaseRenderer;->T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v9

    if-eq v9, v8, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0, v7}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->j()V

    iget-object v7, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v13, v0, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v7

    iget-object v11, v1, Landroidx/media3/exoplayer/text/TextRenderer;->t:Landroidx/media3/extractor/text/CueDecoder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-virtual {v11, v8, v9, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v7, Landroid/os/Bundle;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const-string v8, "c"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/media3/extractor/text/CuesWithTiming;

    sget-object v9, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v9, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_5

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/media3/common/text/Cue;->b(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    const-string v8, "d"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-direct/range {v11 .. v16}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v11, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->b(Landroidx/media3/extractor/text/CuesWithTiming;J)Z

    move-result v10

    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    iget-wide v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    invoke-interface {v0, v7, v8}, Landroidx/media3/exoplayer/text/CuesResolver;->d(J)J

    move-result-wide v7

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v0, v7, v11

    if-nez v0, :cond_6

    iget-boolean v9, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    if-eqz v9, :cond_6

    if-nez v10, :cond_6

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    :cond_6
    if-eqz v0, :cond_7

    cmp-long v0, v7, v2

    if-gtz v0, :cond_7

    move v10, v4

    :cond_7
    if-eqz v10, :cond_9

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->a(J)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v7, v1, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v7, v2, v3}, Landroidx/media3/exoplayer/text/CuesResolver;->c(J)J

    move-result-wide v7

    new-instance v9, Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/text/TextRenderer;->X(J)J

    move-result-wide v10

    invoke-direct {v9, v0, v10, v11}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    if-eqz v6, :cond_8

    invoke-virtual {v6, v4, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    iget-object v0, v9, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/text/TextOutput;->n(Ljava/util/List;)V

    invoke-interface {v5, v9}, Landroidx/media3/exoplayer/text/TextOutput;->B(Landroidx/media3/common/text/CueGroup;)V

    :goto_2
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v7, v8}, Landroidx/media3/exoplayer/text/CuesResolver;->e(J)V

    :cond_9
    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    return-void

    :cond_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->U()V

    iput-wide v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const-string v11, "Subtitle decoding failed. streamFormat="

    iget-object v12, v1, Landroidx/media3/exoplayer/text/TextRenderer;->w:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    const/4 v13, 0x0

    if-nez v0, :cond_b

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2, v3}, Landroidx/media3/extractor/text/SubtitleDecoder;->b(J)V

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->V()V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v0}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iget-wide v1, v1, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/decoder/Decoder;->d(J)V

    goto/16 :goto_e

    :cond_b
    :goto_3
    iget v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    const/4 v14, 0x2

    if-eq v0, v14, :cond_c

    goto/16 :goto_e

    :cond_c
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->W()J

    move-result-wide v15

    move v0, v10

    :goto_4
    cmp-long v15, v15, v2

    if-gtz v15, :cond_e

    iget v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->W()J

    move-result-wide v15

    move v0, v4

    goto :goto_4

    :cond_d
    move v0, v10

    :cond_e
    iget-object v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v15, :cond_10

    invoke-virtual {v15, v7}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v16

    if-eqz v16, :cond_11

    if-nez v0, :cond_10

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->W()J

    move-result-wide v15

    const-wide v17, 0x7fffffffffffffffL

    cmp-long v15, v15, v17

    if-nez v15, :cond_10

    iget v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    if-ne v15, v14, :cond_f

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iget-object v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v15}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    iget-object v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v15}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v15

    iput-object v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    move-object/from16 v16, v9

    iget-wide v8, v1, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    invoke-interface {v15, v8, v9}, Landroidx/media3/decoder/Decoder;->d(J)V

    goto :goto_5

    :cond_f
    move-object/from16 v16, v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    goto :goto_5

    :cond_10
    move-object/from16 v16, v9

    goto :goto_5

    :cond_11
    move-object/from16 v16, v9

    iget-wide v8, v15, Landroidx/media3/decoder/DecoderOutputBuffer;->c:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_13

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->h()V

    :cond_12
    invoke-virtual {v15, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->a(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->D:I

    iput-object v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iput-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move v0, v4

    :cond_13
    :goto_5
    if-eqz v0, :cond_18

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->a(J)I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v8, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v8}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v8

    if-nez v8, :cond_14

    goto :goto_6

    :cond_14
    iget-object v8, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v9, -0x1

    if-ne v0, v9, :cond_15

    invoke-virtual {v8}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v8, v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->c(I)J

    move-result-wide v8

    goto :goto_7

    :cond_15
    sub-int/2addr v0, v4

    invoke-virtual {v8, v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->c(I)J

    move-result-wide v8

    goto :goto_7

    :cond_16
    :goto_6
    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v8, v0, Landroidx/media3/decoder/DecoderOutputBuffer;->c:J

    :goto_7
    invoke-virtual {v1, v8, v9}, Landroidx/media3/exoplayer/text/TextRenderer;->X(J)J

    move-result-wide v8

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    iget-object v15, v1, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v15, v2, v3}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2, v8, v9}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    if-eqz v6, :cond_17

    invoke-virtual {v6, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    :cond_17
    iget-object v2, v0, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5, v2}, Landroidx/media3/exoplayer/text/TextOutput;->n(Ljava/util/List;)V

    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/text/TextOutput;->B(Landroidx/media3/common/text/CueGroup;)V

    :cond_18
    :goto_8
    iget v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    if-ne v0, v14, :cond_19

    goto/16 :goto_e

    :cond_19
    :goto_9
    :try_start_1
    iget-boolean v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    if-nez v0, :cond_21

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->A:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v0, :cond_1b

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez v0, :cond_1a

    goto/16 :goto_e

    :cond_1a
    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->A:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_d

    :cond_1b
    :goto_a
    iget v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    if-ne v2, v4, :cond_1c

    iput v7, v0, Landroidx/media3/decoder/Buffer;->b:I

    iget-object v2, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Landroidx/media3/decoder/Decoder;->c(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    iput-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->A:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    iput v14, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    return-void

    :cond_1c
    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0, v10}, Landroidx/media3/exoplayer/BaseRenderer;->T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v5, -0x4

    if-ne v3, v5, :cond_1f

    invoke-virtual {v0, v7}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    iput-boolean v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    goto :goto_b

    :cond_1d
    iget-object v3, v2, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    if-nez v3, :cond_1e

    goto :goto_e

    :cond_1e
    iget-wide v8, v3, Landroidx/media3/common/Format;->t:J

    iput-wide v8, v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;->k:J

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->j()V

    iget-boolean v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    invoke-virtual {v0, v4}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v6

    xor-int/2addr v6, v4

    and-int/2addr v3, v6

    iput-boolean v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    :goto_b
    iget-boolean v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    if-nez v3, :cond_20

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v0}, Landroidx/media3/decoder/Decoder;->c(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    iput-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->A:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :cond_1f
    const/4 v0, -0x3

    if-ne v3, v0, :cond_20

    goto :goto_e

    :cond_20
    :goto_c
    move-object/from16 v16, v2

    goto :goto_9

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->V()V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/TextRenderer;->Y()V

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v13, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iput v10, v1, Landroidx/media3/exoplayer/text/TextRenderer;->y:I

    iput-boolean v4, v1, Landroidx/media3/exoplayer/text/TextRenderer;->x:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v0}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/text/TextRenderer;->z:Landroidx/media3/extractor/text/SubtitleDecoder;

    iget-wide v1, v1, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/decoder/Decoder;->d(J)V

    :cond_21
    :goto_e
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/text/CueGroup;

    iget-object v0, p1, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->F:Landroidx/media3/exoplayer/text/TextOutput;

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/text/TextOutput;->n(Ljava/util/List;)V

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/text/TextOutput;->B(Landroidx/media3/common/text/CueGroup;)V

    return v1

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return p0
.end method

.method public final isReady()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->J:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->v:Landroidx/media3/exoplayer/text/CuesResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    invoke-interface {v0, v3, v4}, Landroidx/media3/exoplayer/text/CuesResolver;->d(J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->s()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v2

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->I:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->H:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->B:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->c(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->C:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->K:J

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->d()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->c(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->A:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-nez p0, :cond_6

    :cond_5
    :goto_0
    return v1

    :cond_6
    return v2
.end method
