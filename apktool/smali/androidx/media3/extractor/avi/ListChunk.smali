.class final Landroidx/media3/extractor/avi/ListChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/avi/ListChunk;->b:I

    iput-object p2, p0, Landroidx/media3/extractor/avi/ListChunk;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;
    .locals 14

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const/4 v2, -0x2

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_f

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v5

    iget v6, p1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    const v5, 0x5453494c

    if-ne v3, v5, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v3

    invoke-static {v3, p1}, Landroidx/media3/extractor/avi/ListChunk;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;

    move-result-object v3

    goto/16 :goto_5

    :cond_0
    const/16 v5, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x4

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move-object v3, v7

    goto/16 :goto_5

    :sswitch_0
    new-instance v3, Landroidx/media3/extractor/avi/StreamNameChunk;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/extractor/avi/StreamNameChunk;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_1
    move v3, v8

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v8

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v9

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v10

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v11

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v12

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v13

    new-instance v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-direct/range {v7 .. v13}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;-><init>(IIIIII)V

    goto :goto_1

    :sswitch_2
    move v3, v8

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v7

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v4

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v8

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    new-instance v3, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    invoke-direct {v3, v7, v4, v8}, Landroidx/media3/extractor/avi/AviMainHeaderChunk;-><init>(III)V

    goto/16 :goto_5

    :sswitch_3
    move v3, v8

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v4

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v5

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    move-object v8, v7

    goto :goto_2

    :sswitch_4
    const-string v8, "video/mjpeg"

    goto :goto_2

    :sswitch_5
    const-string v8, "video/mp43"

    goto :goto_2

    :sswitch_6
    const-string v8, "video/mp42"

    goto :goto_2

    :sswitch_7
    const-string v8, "video/avc"

    goto :goto_2

    :sswitch_8
    const-string v8, "video/mp4v-es"

    :goto_2
    if-nez v8, :cond_1

    const-string v4, "Ignoring track with unsupported compression "

    invoke-static {v3, v4}, La;->u(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput v4, v3, Landroidx/media3/common/Format$Builder;->u:I

    iput v5, v3, Landroidx/media3/common/Format$Builder;->v:I

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v4, Landroidx/media3/extractor/avi/StreamFormatChunk;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-direct {v4, v5}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    move-object v3, v4

    goto/16 :goto_5

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v4

    const-string v5, "audio/raw"

    const-string v8, "audio/mp4a-latm"

    if-eq v4, v3, :cond_7

    const/16 v3, 0x55

    if-eq v4, v3, :cond_6

    const/16 v3, 0xff

    if-eq v4, v3, :cond_5

    const/16 v3, 0x2000

    if-eq v4, v3, :cond_4

    const/16 v3, 0x2001

    if-eq v4, v3, :cond_3

    move-object v3, v7

    goto :goto_3

    :cond_3
    const-string v3, "audio/vnd.dts"

    goto :goto_3

    :cond_4
    const-string v3, "audio/ac3"

    goto :goto_3

    :cond_5
    move-object v3, v8

    goto :goto_3

    :cond_6
    const-string v3, "audio/mpeg"

    goto :goto_3

    :cond_7
    move-object v3, v5

    :goto_3
    if-nez v3, :cond_8

    const-string v3, "Ignoring track with unsupported format tag "

    invoke-static {v4, v3}, La;->u(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v4

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v7

    const/4 v9, 0x6

    invoke-virtual {p1, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v9

    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result v9

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_9

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v10

    goto :goto_4

    :cond_9
    move v10, v11

    :goto_4
    new-instance v12, Landroidx/media3/common/Format$Builder;

    invoke-direct {v12}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v4, v12, Landroidx/media3/common/Format$Builder;->F:I

    iput v7, v12, Landroidx/media3/common/Format$Builder;->G:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v9, :cond_a

    iput v9, v12, Landroidx/media3/common/Format$Builder;->H:I

    :cond_a
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-lez v10, :cond_b

    new-array v3, v10, [B

    invoke-virtual {p1, v11, v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v12, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    :cond_b
    new-instance v3, Landroidx/media3/extractor/avi/StreamFormatChunk;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v12}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-direct {v3, v4}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    goto :goto_5

    :cond_c
    invoke-static {v2}, Landroidx/media3/common/util/Util;->F(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ignoring strf box for unsupported track type: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroidx/media3/extractor/avi/AviChunk;->getType()I

    move-result v4

    const v5, 0x68727473

    if-ne v4, v5, :cond_d

    move-object v2, v3

    check-cast v2, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v2}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->a()I

    move-result v2

    :cond_d
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    goto/16 :goto_0

    :cond_f
    new-instance p1, Landroidx/media3/extractor/avi/ListChunk;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/media3/extractor/avi/ListChunk;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/avi/ListChunk;->a:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->v(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/avi/AviChunk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/avi/ListChunk;->b:I

    return p0
.end method
