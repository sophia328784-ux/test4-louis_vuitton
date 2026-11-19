.class public final Landroidx/media3/extractor/text/vobsub/VobsubParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
    }
.end annotation


# static fields
.field public static final e:Landroidx/media3/extractor/text/CuesWithTiming;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    sput-object v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->e:Landroidx/media3/extractor/text/CuesWithTiming;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->c:Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    new-instance p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const-string p1, "\\r?\\n"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_3

    aget-object v4, p0, v3

    const-string v5, "palette: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v8, "Parsing color failed"

    invoke-static {v8, v7}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v1

    :goto_2
    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "size: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring malformed IDX size line: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :try_start_1
    aget-object v4, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->g:I

    const/4 v4, 0x1

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->h:I

    iput-boolean v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->d:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "Parsing IDX failed"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int v2, v1, p3

    iget-object v3, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v4, p1

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->d:Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->d:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->d:Ljava/util/zip/Inflater;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    move-result v2

    const/16 v4, 0x78

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->I(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v2, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {v3, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    :cond_1
    iget-object v0, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser;->c:Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    const/4 v6, -0x1

    iput v6, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    iput v6, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_16

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v9

    if-eq v9, v7, :cond_2

    goto/16 :goto_10

    :cond_2
    iget-object v7, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    const/4 v9, 0x1

    if-nez v7, :cond_3

    const-string v7, "Skipping SPU (no palette)"

    invoke-static {v7}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_0
    move-wide/from16 p0, v1

    move/from16 p3, v4

    goto/16 :goto_9

    :cond_3
    iget-boolean v7, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->d:Z

    if-nez v7, :cond_4

    const-string v7, "Skipping SPU (no plane)"

    invoke-static {v7}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v7, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :goto_1
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_5

    move-wide/from16 p0, v1

    move/from16 p3, v4

    move/from16 v10, p3

    goto/16 :goto_8

    :cond_5
    iget v10, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v12

    mul-int/lit16 v12, v12, 0x2710

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v13

    add-int/2addr v13, v7

    if-eq v13, v10, :cond_6

    iget v10, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-ge v13, v10, :cond_6

    move v10, v9

    goto :goto_2

    :cond_6
    move v10, v4

    :goto_2
    if-eqz v10, :cond_7

    move v14, v13

    goto :goto_3

    :cond_7
    iget v14, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    :goto_3
    move-wide/from16 p0, v1

    move v15, v9

    :goto_4
    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v1, v14, :cond_e

    if-eqz v15, :cond_e

    int-to-long v1, v12

    iget-object v15, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a:[I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    move/from16 p3, v4

    const/16 v4, 0xff

    if-eq v5, v4, :cond_8

    const/4 v4, 0x3

    packed-switch v5, :pswitch_data_0

    const-string v1, "Unrecognized command: "

    invoke-static {v5, v1}, La;->u(ILjava/lang/String;)V

    :cond_8
    :goto_5
    move/from16 v15, p3

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-ge v1, v11, :cond_9

    const-string v1, "Incomplete offsets command"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    :goto_6
    :pswitch_1
    move v15, v9

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_a

    const-string v1, "Incomplete area command"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    shl-int/2addr v1, v11

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v15

    shl-int/2addr v4, v11

    shr-int/lit8 v16, v5, 0x4

    or-int v4, v4, v16

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v15

    new-instance v15, Landroid/graphics/Rect;

    add-int/2addr v2, v9

    add-int/2addr v5, v9

    invoke-direct {v15, v1, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v15, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    goto :goto_6

    :pswitch_3
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-ge v1, v8, :cond_b

    const-string v1, "Incomplete alpha command"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-boolean v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    if-nez v1, :cond_c

    const-string v1, "Ignoring alpha command before color command"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    aget v5, v15, v4

    move/from16 p4, v4

    shr-int/lit8 v4, v1, 0x4

    invoke-static {v5, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    move-result v4

    aput v4, v15, p4

    aget v4, v15, v8

    and-int/lit8 v1, v1, 0xf

    invoke-static {v4, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    move-result v1

    aput v1, v15, v8

    aget v1, v15, v9

    shr-int/lit8 v4, v2, 0x4

    invoke-static {v1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    move-result v1

    aput v1, v15, v9

    aget v1, v15, p3

    and-int/lit8 v2, v2, 0xf

    invoke-static {v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c(II)I

    move-result v1

    aput v1, v15, p3

    goto/16 :goto_6

    :pswitch_4
    move/from16 p4, v4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-ge v1, v8, :cond_d

    const-string v1, "Incomplete color command"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    iget-object v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    shr-int/lit8 v5, v1, 0x4

    invoke-static {v5, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a(I[I)I

    move-result v4

    aput v4, v15, p4

    iget-object v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a(I[I)I

    move-result v1

    aput v1, v15, v8

    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    shr-int/lit8 v4, v2, 0x4

    invoke-static {v4, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a(I[I)I

    move-result v1

    aput v1, v15, v9

    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a(I[I)I

    move-result v1

    aput v1, v15, p3

    iput-boolean v9, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    goto/16 :goto_6

    :pswitch_5
    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    goto/16 :goto_6

    :pswitch_6
    iput-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    goto/16 :goto_6

    :goto_7
    move/from16 v4, p3

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_e
    move/from16 p3, v4

    if-eqz v10, :cond_f

    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :cond_f
    :goto_8
    if-nez v10, :cond_15

    :goto_9
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->f:[I

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->d:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->e:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    if-eqz v1, :cond_10

    iget v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    if-eq v2, v6, :cond_10

    iget v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    if-eq v2, v6, :cond_10

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v8, :cond_10

    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v8, :cond_11

    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    iget-object v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v2

    new-array v2, v4, [I

    new-instance v4, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iget v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v0, v4, v9, v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    iget v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    move/from16 v3, p3

    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v3}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->g:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    const/4 v4, 0x0

    iput v4, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v5, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->h:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    iput v4, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    iput v4, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->g:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->l:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->m:F

    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object v5

    goto :goto_b

    :goto_a
    move-object v5, v2

    :goto_b
    iget-wide v1, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    cmp-long v3, v1, p0

    if-eqz v3, :cond_13

    iget-wide v3, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    cmp-long v6, v3, p0

    if-eqz v6, :cond_12

    cmp-long v6, v1, v3

    if-lez v6, :cond_12

    sub-long/2addr v1, v3

    :cond_12
    move-wide v10, v1

    goto :goto_c

    :cond_13
    move-wide/from16 v10, p0

    :goto_c
    new-instance v6, Landroidx/media3/extractor/text/CuesWithTiming;

    if-eqz v5, :cond_14

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_d
    move-object v7, v1

    goto :goto_e

    :cond_14
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_d

    :goto_e
    iget-wide v8, v0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    :goto_f
    move-object/from16 v0, p5

    goto :goto_11

    :cond_15
    const/4 v5, 0x0

    move-wide/from16 v1, p0

    move/from16 v4, p3

    goto/16 :goto_1

    :cond_16
    :goto_10
    sget-object v6, Landroidx/media3/extractor/text/vobsub/VobsubParser;->e:Landroidx/media3/extractor/text/CuesWithTiming;

    goto :goto_f

    :goto_11
    invoke-interface {v0, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
