.class final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final f:Z

.field public final g:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:I

.field public final t:Z

.field public final u:I

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:I

.field public final z:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;IZ)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->g:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->x0:Z

    iget-object p2, p4, Landroidx/media3/common/TrackSelectionParameters;->m:Lcom/google/common/collect/ImmutableList;

    iget-object p3, p4, Landroidx/media3/common/TrackSelectionParameters;->o:Lcom/google/common/collect/ImmutableList;

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p7, 0x0

    iput-boolean p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->t:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p8, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget v4, v3, Landroidx/media3/common/Format;->v:I

    if-eq v4, v1, :cond_1

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->a:I

    if-gt v4, v5, :cond_5

    :cond_1
    iget v4, v3, Landroidx/media3/common/Format;->w:I

    if-eq v4, v1, :cond_2

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->b:I

    if-gt v4, v5, :cond_5

    :cond_2
    iget v4, v3, Landroidx/media3/common/Format;->z:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->c:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    :cond_3
    iget v3, v3, Landroidx/media3/common/Format;->j:I

    if-eq v3, v1, :cond_4

    iget v4, p4, Landroidx/media3/common/TrackSelectionParameters;->d:I

    if-gt v3, v4, :cond_5

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v3, p7

    :goto_1
    iput-boolean v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->f:Z

    if-eqz p8, :cond_a

    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget v3, p8, Landroidx/media3/common/Format;->v:I

    if-eq v3, v1, :cond_6

    iget v4, p4, Landroidx/media3/common/TrackSelectionParameters;->e:I

    if-lt v3, v4, :cond_a

    :cond_6
    iget v3, p8, Landroidx/media3/common/Format;->w:I

    if-eq v3, v1, :cond_7

    iget v4, p4, Landroidx/media3/common/TrackSelectionParameters;->f:I

    if-lt v3, v4, :cond_a

    :cond_7
    iget v3, p8, Landroidx/media3/common/Format;->z:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_8

    iget v4, p4, Landroidx/media3/common/TrackSelectionParameters;->g:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    :cond_8
    iget p8, p8, Landroidx/media3/common/Format;->j:I

    if-eq p8, v1, :cond_9

    iget v3, p4, Landroidx/media3/common/TrackSelectionParameters;->h:I

    if-lt p8, v3, :cond_a

    :cond_9
    move p8, v2

    goto :goto_2

    :cond_a
    move p8, p7

    :goto_2
    iput-boolean p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->h:Z

    invoke-static {p5, p7}, Landroidx/media3/exoplayer/RendererCapabilities;->k(IZ)Z

    move-result p8

    iput-boolean p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->i:Z

    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget v3, p8, Landroidx/media3/common/Format;->z:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    move v0, p7

    :goto_3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->j:Z

    iget v0, p8, Landroidx/media3/common/Format;->j:I

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->k:I

    iget v0, p8, Landroidx/media3/common/Format;->v:I

    if-eq v0, v1, :cond_d

    iget p8, p8, Landroidx/media3/common/Format;->w:I

    if-ne p8, v1, :cond_c

    goto :goto_4

    :cond_c
    mul-int/2addr v0, p8

    goto :goto_5

    :cond_d
    :goto_4
    move v0, v1

    :goto_5
    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->l:I

    move p8, p7

    :goto_6
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const v3, 0x7fffffff

    if-ge p8, v0, :cond_f

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    invoke-interface {p3, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4, p7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->p(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p8, p8, 0x1

    goto :goto_6

    :cond_f
    move v0, p7

    move p8, v3

    :goto_7
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:I

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->f:I

    iget p8, p4, Landroidx/media3/common/TrackSelectionParameters;->p:I

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    if-eqz p3, :cond_10

    if-ne p3, p8, :cond_10

    move p3, v3

    goto :goto_8

    :cond_10
    and-int/2addr p3, p8

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_8
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->f:I

    if-eqz p3, :cond_12

    and-int/2addr p3, v2

    if-eqz p3, :cond_11

    goto :goto_9

    :cond_11
    move p3, p7

    goto :goto_a

    :cond_12
    :goto_9
    move p3, v2

    :goto_a
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->r:Z

    invoke-static {p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_13

    move p3, v2

    goto :goto_b

    :cond_13
    move p3, p7

    :goto_b
    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    invoke-static {p8, p6, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->p(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->s:I

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget-object p6, p3, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    and-int/lit16 p8, p5, 0x180

    const/16 v0, 0x100

    if-ne p8, v0, :cond_14

    invoke-static {p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_14

    move-object p6, p3

    :cond_14
    move p3, p7

    :goto_c
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge p3, v4, :cond_16

    if-eqz p6, :cond_15

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v3, p3

    goto :goto_d

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    iput v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->m:I

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget-object p3, p4, Landroidx/media3/common/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    invoke-static {p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I

    move-result p2

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:I

    const/16 p2, 0x80

    if-eq p8, p2, :cond_18

    if-ne p8, v0, :cond_17

    goto :goto_e

    :cond_17
    move p3, p7

    goto :goto_f

    :cond_18
    :goto_e
    move p3, v2

    :goto_f
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:Z

    if-ne p8, p2, :cond_19

    move p2, v2

    goto :goto_10

    :cond_19
    move p2, p7

    :goto_10
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->w:Z

    and-int/lit8 p3, p5, 0x40

    const/16 p4, 0x40

    if-ne p3, p4, :cond_1a

    move p3, v2

    goto :goto_11

    :cond_1a
    move p3, p7

    :goto_11
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:Z

    iput-object p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->A:Ljava/lang/String;

    const/4 p3, 0x2

    if-nez p6, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p8, 0x4

    const/4 v0, 0x3

    sparse-switch p4, :sswitch_data_0

    :goto_12
    move p4, v1

    goto :goto_13

    :sswitch_0
    const-string p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1c

    goto :goto_12

    :cond_1c
    move p4, p8

    goto :goto_13

    :sswitch_1
    const-string p4, "video/avc"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1d

    goto :goto_12

    :cond_1d
    move p4, v0

    goto :goto_13

    :sswitch_2
    const-string p4, "video/hevc"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1e

    goto :goto_12

    :cond_1e
    move p4, p3

    goto :goto_13

    :sswitch_3
    const-string p4, "video/av01"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1f

    goto :goto_12

    :cond_1f
    move p4, v2

    goto :goto_13

    :sswitch_4
    const-string p4, "video/dolby-vision"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_20

    goto :goto_12

    :cond_20
    move p4, p7

    :goto_13
    packed-switch p4, :pswitch_data_0

    :goto_14
    move p8, p7

    goto :goto_15

    :pswitch_0
    move p8, p3

    goto :goto_15

    :pswitch_1
    move p8, v2

    goto :goto_15

    :pswitch_2
    move p8, v0

    goto :goto_15

    :pswitch_3
    const/4 p8, 0x5

    :goto_15
    :pswitch_4
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->y:I

    if-eqz p2, :cond_23

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget-object p2, p2, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    if-eqz p2, :cond_22

    iget p2, p2, Landroidx/media3/common/ColorInfo;->c:I

    const/4 p4, 0x7

    if-eq p2, p4, :cond_21

    const/4 p4, 0x6

    if-ne p2, p4, :cond_23

    :cond_21
    move p2, v2

    goto :goto_16

    :cond_22
    sget-object p2, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    :cond_23
    move p2, p7

    :goto_16
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->z:Z

    iget-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->f:Z

    iget-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->g:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->e:Landroidx/media3/common/Format;

    iget p8, p6, Landroidx/media3/common/Format;->f:I

    and-int/lit16 p8, p8, 0x4000

    if-eqz p8, :cond_24

    goto :goto_17

    :cond_24
    iget-boolean p8, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->B0:Z

    invoke-static {p5, p8}, Landroidx/media3/exoplayer/RendererCapabilities;->k(IZ)Z

    move-result p8

    if-nez p8, :cond_25

    goto :goto_17

    :cond_25
    if-nez p2, :cond_26

    iget-boolean p8, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->w0:Z

    if-nez p8, :cond_26

    goto :goto_17

    :cond_26
    invoke-static {p5, p7}, Landroidx/media3/exoplayer/RendererCapabilities;->k(IZ)Z

    move-result p7

    if-eqz p7, :cond_27

    iget-boolean p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->h:Z

    if-eqz p7, :cond_27

    if-eqz p2, :cond_27

    iget p2, p6, Landroidx/media3/common/Format;->j:I

    if-eq p2, v1, :cond_27

    iget-boolean p2, p4, Landroidx/media3/common/TrackSelectionParameters;->G:Z

    if-nez p2, :cond_27

    iget-boolean p2, p4, Landroidx/media3/common/TrackSelectionParameters;->F:Z

    if-nez p2, :cond_27

    and-int/2addr p1, p5

    if-eqz p1, :cond_27

    move p7, p3

    goto :goto_17

    :cond_27
    move p7, v2

    :goto_17
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->u:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->u:I

    return p0
.end method

.method public final b(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 2

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->A:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->g:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:Z

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
