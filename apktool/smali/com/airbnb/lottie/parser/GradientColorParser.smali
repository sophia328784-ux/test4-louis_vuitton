.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->w()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v3, v8, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v9

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v8

    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    :cond_5
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    new-array v3, v2, [F

    new-array v2, v2, [I

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_2
    iget v12, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    mul-int/2addr v12, v8

    if-ge v9, v12, :cond_c

    div-int/lit8 v12, v9, 0x4

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    rem-int/lit8 v15, v9, 0x4

    if-eqz v15, :cond_9

    const-wide v16, 0x406fe00000000000L    # 255.0

    if-eq v15, v4, :cond_8

    if-eq v15, v7, :cond_7

    if-eq v15, v6, :cond_6

    goto :goto_3

    :cond_6
    mul-double v13, v13, v16

    double-to-int v13, v13

    const/16 v14, 0xff

    invoke-static {v14, v10, v11, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    aput v13, v2, v12

    goto :goto_3

    :cond_7
    mul-double v13, v13, v16

    double-to-int v11, v13

    :goto_3
    move/from16 p2, v4

    goto :goto_4

    :cond_8
    mul-double v13, v13, v16

    double-to-int v10, v13

    goto :goto_3

    :cond_9
    if-lez v12, :cond_a

    add-int/lit8 v15, v12, -0x1

    aget v15, v3, v15

    move/from16 p2, v4

    double-to-float v4, v13

    cmpl-float v15, v15, v4

    if-ltz v15, :cond_b

    const v13, 0x3c23d70a    # 0.01f

    add-float/2addr v4, v13

    aput v4, v3, v12

    goto :goto_4

    :cond_a
    move/from16 p2, v4

    :cond_b
    double-to-float v4, v13

    aput v4, v3, v12

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, p2

    goto :goto_2

    :cond_c
    move/from16 p2, v4

    new-instance v4, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v4, v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->a:I

    mul-int/2addr v0, v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_d

    return-object v4

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/2addr v2, v7

    new-array v3, v2, [F

    new-array v6, v2, [F

    move v8, v5

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_f

    rem-int/lit8 v9, v0, 0x2

    if-nez v9, :cond_e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v3, v8

    goto :goto_6

    :cond_e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    iget-object v0, v4, Lcom/airbnb/lottie/model/content/GradientColor;->a:[F

    array-length v1, v0

    if-nez v1, :cond_10

    move-object v8, v3

    goto :goto_c

    :cond_10
    if-nez v2, :cond_11

    move-object v8, v0

    goto :goto_c

    :cond_11
    array-length v1, v0

    add-int/2addr v1, v2

    new-array v8, v1, [F

    move v9, v5

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_7
    if-ge v9, v1, :cond_18

    array-length v13, v0

    const/high16 v14, 0x7fc00000    # Float.NaN

    if-ge v11, v13, :cond_12

    aget v13, v0, v11

    goto :goto_8

    :cond_12
    move v13, v14

    :goto_8
    if-ge v12, v2, :cond_13

    aget v14, v3, v12

    :cond_13
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_17

    cmpg-float v15, v13, v14

    if-gez v15, :cond_14

    goto :goto_a

    :cond_14
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_16

    cmpg-float v15, v14, v13

    if-gez v15, :cond_15

    goto :goto_9

    :cond_15
    aput v13, v8, v9

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_16
    :goto_9
    aput v14, v8, v9

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_17
    :goto_a
    aput v13, v8, v9

    add-int/lit8 v11, v11, 0x1

    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_18
    if-nez v10, :cond_19

    goto :goto_c

    :cond_19
    sub-int/2addr v1, v10

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v8

    :goto_c
    array-length v1, v8

    new-array v9, v1, [I

    move v10, v5

    :goto_d
    if-ge v10, v1, :cond_27

    aget v11, v8, v10

    invoke-static {v0, v11}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v12

    invoke-static {v3, v11}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v13

    const-string v15, "Unreachable code."

    const/high16 v16, 0x437f0000    # 255.0f

    move/from16 v17, v5

    iget-object v5, v4, Lcom/airbnb/lottie/model/content/GradientColor;->b:[I

    if-ltz v12, :cond_1a

    if-lez v13, :cond_1b

    :cond_1a
    const/16 p0, 0x0

    goto :goto_13

    :cond_1b
    aget v5, v5, v12

    if-lt v2, v7, :cond_20

    aget v12, v3, v17

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_1c

    goto :goto_11

    :cond_1c
    move/from16 v12, p2

    :goto_e
    if-ge v12, v2, :cond_1f

    aget v13, v3, v12

    cmpg-float v18, v13, v11

    if-gez v18, :cond_1d

    const/16 p0, 0x0

    add-int/lit8 v14, v2, -0x1

    if-eq v12, v14, :cond_1d

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_1d
    if-gtz v18, :cond_1e

    aget v11, v6, v12

    :goto_f
    mul-float v11, v11, v16

    float-to-int v11, v11

    goto :goto_10

    :cond_1e
    add-int/lit8 v14, v12, -0x1

    aget v15, v3, v14

    sub-float/2addr v13, v15

    sub-float/2addr v11, v15

    div-float/2addr v11, v13

    aget v13, v6, v14

    aget v12, v6, v12

    invoke-static {v13, v12, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->f(FFF)F

    move-result v11

    goto :goto_f

    :goto_10
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v11, v12, v13, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_12

    :cond_1f
    const/16 p0, 0x0

    invoke-static {v15}, Lmd;->n(Ljava/lang/String;)V

    return-object p0

    :cond_20
    :goto_11
    aget v11, v6, v17

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v11, v12, v13, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    :goto_12
    aput v5, v9, v10

    goto/16 :goto_17

    :goto_13
    if-gez v13, :cond_21

    add-int/lit8 v13, v13, 0x1

    neg-int v13, v13

    :cond_21
    aget v12, v6, v13

    array-length v13, v5

    if-lt v13, v7, :cond_26

    aget v13, v0, v17

    cmpl-float v13, v11, v13

    if-nez v13, :cond_22

    goto :goto_15

    :cond_22
    move/from16 v13, p2

    :goto_14
    array-length v14, v0

    if-ge v13, v14, :cond_25

    aget v14, v0, v13

    cmpg-float v18, v14, v11

    if-gez v18, :cond_23

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-eq v13, v7, :cond_23

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x2

    goto :goto_14

    :cond_23
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-ne v13, v7, :cond_24

    cmpl-float v7, v11, v14

    if-ltz v7, :cond_24

    mul-float v12, v12, v16

    float-to-int v7, v12

    aget v11, v5, v13

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    aget v12, v5, v13

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    aget v5, v5, v13

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v7, v11, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_16

    :cond_24
    add-int/lit8 v7, v13, -0x1

    aget v15, v0, v7

    sub-float/2addr v14, v15

    sub-float/2addr v11, v15

    div-float/2addr v11, v14

    aget v13, v5, v13

    aget v5, v5, v7

    invoke-static {v5, v13, v11}, Lcom/airbnb/lottie/utils/GammaEvaluator;->c(IIF)I

    move-result v5

    mul-float v12, v12, v16

    float-to-int v7, v12

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v7, v11, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_16

    :cond_25
    invoke-static {v15}, Lmd;->n(Ljava/lang/String;)V

    return-object p0

    :cond_26
    :goto_15
    aget v5, v5, v17

    :goto_16
    aput v5, v9, v10

    :goto_17
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v17

    const/4 v7, 0x2

    goto/16 :goto_d

    :cond_27
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v0, v8, v9}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    return-object v0
.end method
