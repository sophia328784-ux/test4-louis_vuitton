.class public abstract Landroidx/compose/ui/text/ParagraphStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui-text"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/unit/TextUnit;->d:J

    sput-wide v0, Landroidx/compose/ui/text/ParagraphStyleKt;->a:J

    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    sget-object v11, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v14, 0xff00000000L

    if-nez v1, :cond_0

    const-wide/16 v16, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0x0

    iget v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    if-ne v1, v12, :cond_a

    :goto_0
    sget-object v12, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    and-long v12, v3, v14

    cmp-long v12, v12, v16

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_2

    iget-wide v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    invoke-static {v3, v4, v12, v13}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_2
    if-eqz v5, :cond_3

    iget-object v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    invoke-virtual {v5, v12}, Landroidx/compose/ui/text/style/TextIndent;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_3
    sget-object v12, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    if-ne v2, v12, :cond_a

    :goto_2
    if-eqz v6, :cond_5

    iget-object v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    invoke-virtual {v6, v12}, Landroidx/compose/ui/text/PlatformParagraphStyle;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_5
    if-eqz v7, :cond_6

    iget-object v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-virtual {v7, v12}, Landroidx/compose/ui/text/style/LineHeightStyle;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_6
    sget-object v12, Landroidx/compose/ui/text/style/LineBreak;->b:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    iget v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    if-ne v8, v12, :cond_a

    :goto_3
    sget-object v12, Landroidx/compose/ui/text/style/Hyphens;->b:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    iget v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    if-ne v9, v12, :cond_a

    :goto_4
    if-eqz v10, :cond_9

    iget-object v12, v0, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    invoke-virtual {v10, v12}, Landroidx/compose/ui/text/style/TextMotion;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_5

    :cond_9
    return-object v0

    :cond_a
    :goto_5
    sget-object v12, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    and-long v12, v3, v14

    cmp-long v12, v12, v16

    if-nez v12, :cond_b

    iget-wide v3, v0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    :cond_b
    move-wide v15, v3

    if-nez v5, :cond_c

    iget-object v3, v0, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    move-object/from16 v17, v3

    goto :goto_6

    :cond_c
    move-object/from16 v17, v5

    :goto_6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_d

    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    :cond_d
    move v13, v1

    sget-object v1, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_e

    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    move v14, v1

    goto :goto_7

    :cond_e
    move v14, v2

    :goto_7
    iget-object v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v1, :cond_10

    :cond_f
    move-object/from16 v18, v6

    goto :goto_8

    :cond_10
    if-nez v6, :cond_f

    move-object/from16 v18, v1

    :goto_8
    if-nez v7, :cond_11

    iget-object v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    move-object/from16 v19, v1

    goto :goto_9

    :cond_11
    move-object/from16 v19, v7

    :goto_9
    sget-object v1, Landroidx/compose/ui/text/style/LineBreak;->b:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_12

    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    move/from16 v20, v1

    goto :goto_a

    :cond_12
    move/from16 v20, v8

    :goto_a
    sget-object v1, Landroidx/compose/ui/text/style/Hyphens;->b:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_13

    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    move/from16 v21, v1

    goto :goto_b

    :cond_13
    move/from16 v21, v9

    :goto_b
    if-nez v10, :cond_14

    iget-object v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    move-object/from16 v22, v0

    goto :goto_c

    :cond_14
    move-object/from16 v22, v10

    :goto_c
    new-instance v12, Landroidx/compose/ui/text/ParagraphStyle;

    const/16 v23, 0x0

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method
