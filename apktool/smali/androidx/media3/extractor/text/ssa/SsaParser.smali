.class public final Landroidx/media3/extractor/text/ssa/SsaParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Z

.field public final b:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:Ljava/util/LinkedHashMap;

.field public e:F

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaParser;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/ssa/SsaParser;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->e:F

    iput v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->f:F

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->a:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "Format:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-static {v2}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->a(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->b:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {p0, v0, v3}, Landroidx/media3/extractor/text/ssa/SsaParser;->e(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/text/ssa/SsaParser;->b:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    return-void
.end method

.method public static d(JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {p3, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static f(Ljava/lang/String;)J
    .locals 6

    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaParser;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xd693a400L

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x3938700

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final a([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    iget-wide v4, v2, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->a:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int v8, v1, p3

    iget-object v9, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->c:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v10, p1

    invoke-virtual {v9, v8, v10}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->J()Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    iget-boolean v8, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->a:Z

    if-nez v8, :cond_1

    invoke-virtual {v0, v9, v1}, Landroidx/media3/extractor/text/ssa/SsaParser;->e(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    :cond_1
    if-eqz v8, :cond_2

    iget-object v8, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->b:Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_23

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const-string v13, "Format:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v11}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->a(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    move-result-object v8

    goto :goto_1

    :cond_3
    const-string v13, "Dialogue:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v8, :cond_5

    const-string v12, "Skipping dialogue line before complete format: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_4
    :goto_2
    move-object/from16 v17, v1

    move-wide/from16 v18, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_15

    :cond_5
    iget v14, v8, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->f:I

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Lcom/google/common/base/Preconditions;->g(Z)V

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget v12, v8, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->a:I

    const-string v10, ","

    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    array-length v13, v10

    if-eq v13, v14, :cond_6

    const-string v10, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    :try_start_0
    aget-object v14, v10, v12

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Fail to parse layer: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v10, v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_7
    const/4 v12, 0x0

    :goto_3
    iget v14, v8, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->b:I

    aget-object v14, v10, v14

    invoke-static {v14}, Landroidx/media3/extractor/text/ssa/SsaParser;->f(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v17, v14, p1

    const-string v13, "Skipping invalid timing: "

    if-nez v17, :cond_8

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object/from16 v17, v1

    iget v1, v8, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->c:I

    aget-object v1, v10, v1

    move-wide/from16 v18, v4

    invoke-static {v1}, Landroidx/media3/extractor/text/ssa/SsaParser;->f(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-eqz v1, :cond_9

    cmp-long v1, v4, v14

    if-gtz v1, :cond_a

    :cond_9
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_14

    :cond_a
    iget-object v1, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->d:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_b

    iget v11, v8, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->d:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_b

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/ssa/SsaStyle;

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    iget v11, v8, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->e:I

    aget-object v10, v10, v11

    sget-object v11, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object/from16 v20, v8

    const/4 v8, 0x0

    const/4 v13, -0x1

    :goto_5
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v21, v9

    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->a(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_c

    move-object v8, v9

    :catch_1
    :cond_c
    :try_start_2
    sget-object v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle;->a(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    const/4 v9, -0x1

    goto :goto_7

    :cond_d
    const/4 v3, -0x1

    goto :goto_6

    :goto_7
    if-eq v3, v9, :cond_e

    move v13, v3

    :catch_2
    :cond_e
    move-object/from16 v9, v21

    goto :goto_5

    :cond_f
    move-object/from16 v21, v9

    new-instance v3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;

    sget-object v3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "\\N"

    const-string v10, "\n"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "\\n"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "\\h"

    const-string v10, "\u00a0"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget v9, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->e:F

    iget v10, v0, Landroidx/media3/extractor/text/ssa/SsaParser;->f:F

    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v3}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iput-object v11, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    iput v12, v3, Landroidx/media3/common/text/Cue$Builder;->r:I

    if-eqz v1, :cond_18

    const p1, -0x800001

    iget-boolean v12, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->g:Z

    iget-object v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->d:Ljava/lang/Integer;

    move-object/from16 v22, v0

    iget-object v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->c:Ljava/lang/Integer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    move/from16 v25, v9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    move/from16 v23, v10

    move/from16 v26, v12

    const/4 v10, 0x0

    const/16 v12, 0x21

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_10
    move/from16 v25, v9

    move/from16 v23, v10

    move/from16 v26, v12

    const/4 v10, 0x0

    const/16 v12, 0x21

    :goto_8
    iget v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->j:I

    const/4 v9, 0x3

    if-ne v0, v9, :cond_11

    if-eqz v22, :cond_11

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    iget v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->e:F

    cmpl-float v9, v0, p1

    if-eqz v9, :cond_12

    cmpl-float v9, v23, p1

    if-eqz v9, :cond_12

    div-float v0, v0, v23

    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->k:F

    const/4 v9, 0x1

    iput v9, v3, Landroidx/media3/common/text/Cue$Builder;->j:I

    :cond_12
    iget-boolean v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->f:Z

    if-eqz v0, :cond_13

    if-eqz v26, :cond_13

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x3

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/4 v10, 0x0

    const/16 v12, 0x21

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_13
    const/4 v10, 0x0

    const/16 v12, 0x21

    if-eqz v0, :cond_14

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_14
    if-eqz v26, :cond_15

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    :goto_9
    iget-boolean v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->h:Z

    if-eqz v0, :cond_16

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    iget-boolean v0, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->i:Z

    if-eqz v0, :cond_17

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v11, v0, v10, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    :goto_a
    const/4 v9, -0x1

    goto :goto_b

    :cond_18
    move/from16 v25, v9

    move/from16 v23, v10

    const p1, -0x800001

    goto :goto_a

    :goto_b
    if-eq v13, v9, :cond_19

    goto :goto_c

    :cond_19
    if-eqz v1, :cond_1a

    iget v13, v1, Landroidx/media3/extractor/text/ssa/SsaStyle;->b:I

    goto :goto_c

    :cond_1a
    move v13, v9

    :goto_c
    const-string v0, "Unknown alignment: "

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    invoke-static {v13, v0}, La;->u(ILjava/lang/String;)V

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_d

    :pswitch_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_d

    :pswitch_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_d

    :pswitch_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_d
    iput-object v1, v3, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    const/high16 v1, -0x80000000

    packed-switch v13, :pswitch_data_1

    :pswitch_5
    invoke-static {v13, v0}, La;->u(ILjava/lang/String;)V

    :pswitch_6
    move v9, v1

    goto :goto_e

    :pswitch_7
    const/4 v9, 0x2

    goto :goto_e

    :pswitch_8
    const/4 v9, 0x1

    goto :goto_e

    :pswitch_9
    const/4 v9, 0x0

    :goto_e
    iput v9, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    packed-switch v13, :pswitch_data_2

    :pswitch_a
    invoke-static {v13, v0}, La;->u(ILjava/lang/String;)V

    goto :goto_f

    :pswitch_b
    const/4 v1, 0x0

    goto :goto_f

    :pswitch_c
    const/4 v1, 0x1

    goto :goto_f

    :pswitch_d
    const/4 v1, 0x2

    :goto_f
    :pswitch_e
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    if-eqz v8, :cond_1b

    cmpl-float v0, v23, p1

    if-eqz v0, :cond_1b

    cmpl-float v0, v25, p1

    if-eqz v0, :cond_1b

    iget v0, v8, Landroid/graphics/PointF;->x:F

    div-float v0, v0, v25

    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    iget v0, v8, Landroid/graphics/PointF;->y:F

    div-float v0, v0, v23

    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    const/4 v10, 0x0

    iput v10, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    goto :goto_12

    :cond_1b
    iget v0, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    const v8, 0x3d4ccccd    # 0.05f

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3f733333    # 0.95f

    if-eqz v0, :cond_1e

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1d

    const/4 v12, 0x2

    if-eq v0, v12, :cond_1c

    move/from16 v0, p1

    goto :goto_10

    :cond_1c
    move v0, v10

    goto :goto_10

    :cond_1d
    const/4 v12, 0x2

    move v0, v9

    goto :goto_10

    :cond_1e
    const/4 v11, 0x1

    const/4 v12, 0x2

    move v0, v8

    :goto_10
    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    if-eqz v1, :cond_21

    if-eq v1, v11, :cond_20

    if-eq v1, v12, :cond_1f

    move/from16 v12, p1

    goto :goto_11

    :cond_1f
    move v12, v10

    goto :goto_11

    :cond_20
    move v12, v9

    goto :goto_11

    :cond_21
    move v12, v8

    :goto_11
    iput v12, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    const/4 v10, 0x0

    iput v10, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    :goto_12
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object v0

    invoke-static {v14, v15, v7, v6}, Landroidx/media3/extractor/text/ssa/SsaParser;->d(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v4, v5, v7, v6}, Landroidx/media3/extractor/text/ssa/SsaParser;->d(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v3

    :goto_13
    if-ge v1, v3, :cond_22

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :goto_14
    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_22
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v4, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto/16 :goto_1

    :cond_23
    move-wide/from16 v18, v4

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    cmp-long v0, v18, p1

    if-eqz v0, :cond_24

    iget-boolean v0, v2, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->b:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    :goto_16
    move v12, v10

    :goto_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_2a

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    if-eqz v12, :cond_25

    move-object/from16 v1, p5

    const/16 v16, 0x1

    goto :goto_19

    :cond_25
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_29

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v20, Landroidx/media3/extractor/text/CuesWithTiming;

    sub-long v24, v1, v22

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v3, v20

    cmp-long v4, v18, p1

    if-eqz v4, :cond_26

    cmp-long v1, v1, v18

    if-ltz v1, :cond_27

    :cond_26
    move-object/from16 v1, p5

    goto :goto_18

    :cond_27
    if-eqz v0, :cond_28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object/from16 v1, p5

    goto :goto_19

    :goto_18
    invoke-interface {v1, v3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :goto_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_29
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_2a
    move-object/from16 v1, p5

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-interface {v1, v2}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2b
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .locals 27

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v2, "[Script Info]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x5b

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    :catch_0
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->h(Ljava/nio/charset/Charset;)I

    move-result v2

    if-eqz v2, :cond_1

    ushr-int/lit8 v2, v2, 0x8

    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v2

    goto :goto_2

    :cond_1
    const/high16 v2, 0x110000

    :goto_2
    if-eq v2, v6, :cond_0

    :cond_2
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "playresx"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "playresy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->f:F

    goto :goto_1

    :cond_5
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    const-string v2, "[V4+ Styles]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v8, 0x0

    :cond_7
    move-object v9, v8

    :goto_3
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->h(Ljava/nio/charset/Charset;)I

    move-result v0

    if-eqz v0, :cond_8

    ushr-int/lit8 v0, v0, 0x8

    int-to-long v11, v0

    invoke-static {v11, v12}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    goto :goto_4

    :cond_8
    const/high16 v0, 0x110000

    :goto_4
    if-eq v0, v6, :cond_23

    :cond_9
    const-string v0, "Format:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, -0x1

    const-string v14, ","

    if-eqz v0, :cond_15

    const/4 v0, 0x7

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v10, v5

    move v15, v13

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    :goto_5
    array-length v14, v9

    if-ge v10, v14, :cond_14

    aget-object v14, v9, v10

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    :goto_6
    move v0, v13

    goto/16 :goto_7

    :sswitch_0
    const-string v0, "outlinecolour"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const/16 v0, 0x9

    goto/16 :goto_7

    :sswitch_1
    const-string v0, "alignment"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const/16 v0, 0x8

    goto/16 :goto_7

    :sswitch_2
    const-string v0, "borderstyle"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x7

    goto :goto_7

    :sswitch_3
    const-string v0, "fontsize"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    move v0, v11

    goto :goto_7

    :sswitch_4
    const-string v0, "name"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x5

    goto :goto_7

    :sswitch_5
    const-string v0, "bold"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x4

    goto :goto_7

    :sswitch_6
    const-string v0, "primarycolour"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    move v0, v12

    goto :goto_7

    :sswitch_7
    const-string v0, "strikeout"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    move v0, v3

    goto :goto_7

    :sswitch_8
    const-string v0, "underline"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    move v0, v7

    goto :goto_7

    :sswitch_9
    const-string v0, "italic"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    move v0, v5

    :goto_7
    packed-switch v0, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    move/from16 v18, v10

    goto :goto_8

    :pswitch_1
    move/from16 v16, v10

    goto :goto_8

    :pswitch_2
    move/from16 v24, v10

    goto :goto_8

    :pswitch_3
    move/from16 v19, v10

    goto :goto_8

    :pswitch_4
    move v15, v10

    goto :goto_8

    :pswitch_5
    move/from16 v20, v10

    goto :goto_8

    :pswitch_6
    move/from16 v17, v10

    goto :goto_8

    :pswitch_7
    move/from16 v23, v10

    goto :goto_8

    :pswitch_8
    move/from16 v22, v10

    goto :goto_8

    :pswitch_9
    move/from16 v21, v10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x7

    goto/16 :goto_5

    :cond_14
    if-eq v15, v13, :cond_7

    new-instance v14, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;

    array-length v0, v9

    move/from16 v25, v0

    invoke-direct/range {v14 .. v25}, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    move-object v9, v14

    goto/16 :goto_3

    :cond_15
    const-string v0, "Style:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_22

    if-nez v9, :cond_16

    const-string v0, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_16
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    iget v14, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->k:I

    const-string v15, "\'"

    if-eq v0, v14, :cond_17

    array-length v0, v11

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, " values, found "

    const-string v12, "): \'"

    const-string v13, "Skipping malformed \'Style:\' line (expected "

    invoke-static {v14, v0, v13, v11, v12}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_9
    move-object v0, v8

    goto/16 :goto_15

    :cond_17
    :try_start_1
    new-instance v16, Landroidx/media3/extractor/text/ssa/SsaStyle;

    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->a:I

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->b:I

    if-eq v0, v13, :cond_18

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->a(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_14

    :cond_18
    move/from16 v18, v13

    :goto_a
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->c:I

    if-eq v0, v13, :cond_19

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_b

    :cond_19
    move-object/from16 v19, v8

    :goto_b
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->d:I

    if-eq v0, v13, :cond_1a

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_c

    :cond_1a
    move-object/from16 v20, v8

    :goto_c
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->e:I

    const v14, -0x800001

    if-eq v0, v13, :cond_1b

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to parse font size: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_d
    move/from16 v21, v14

    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->f:I

    if-eq v0, v13, :cond_1c

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move/from16 v22, v7

    goto :goto_e

    :cond_1c
    const/16 v22, 0x0

    :goto_e
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->g:I

    if-eq v0, v13, :cond_1d

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move/from16 v23, v7

    goto :goto_f

    :cond_1d
    const/16 v23, 0x0

    :goto_f
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->h:I

    if-eq v0, v13, :cond_1e

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move/from16 v24, v7

    goto :goto_10

    :cond_1e
    const/16 v24, 0x0

    :goto_10
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->i:I

    if-eq v0, v13, :cond_1f

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move/from16 v25, v7

    goto :goto_11

    :cond_1f
    const/16 v25, 0x0

    :goto_11
    iget v0, v9, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->j:I

    if-eq v0, v13, :cond_21

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    if-eq v3, v7, :cond_20

    if-eq v3, v12, :cond_20

    goto :goto_12

    :cond_20
    move v13, v3

    goto :goto_13

    :catch_3
    :goto_12
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring unknown BorderStyle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_21
    :goto_13
    move/from16 v26, v13

    invoke-direct/range {v16 .. v26}, Landroidx/media3/extractor/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v0, v16

    goto :goto_15

    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping malformed \'Style:\' line: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :goto_15
    if-eqz v0, :cond_22

    iget-object v3, v0, Landroidx/media3/extractor/text/ssa/SsaStyle;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_16
    const/4 v3, 0x2

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_23
    iput-object v2, v1, Landroidx/media3/extractor/text/ssa/SsaParser;->d:Ljava/util/LinkedHashMap;

    goto/16 :goto_0

    :cond_24
    const-string v2, "[V4 Styles]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v0, "[V4 Styles] are not supported"

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const-string v2, "[Events]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_26
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
