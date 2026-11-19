.class public Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "chars"

    const-string v10, "markers"

    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v5, "p"

    const-string v6, "u"

    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v0, "tm"

    const-string v1, "dr"

    const-string v2, "cm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 34

    move-object/from16 v0, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->c()F

    move-result v1

    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    new-instance v9, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v9}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v16

    if-eqz v16, :cond_2a

    sget-object v11, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    move/from16 v17, v1

    const/16 v19, 0x0

    packed-switch v11, :pswitch_data_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    :goto_1
    move-object v10, v8

    goto/16 :goto_14

    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    move-object/from16 v11, v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v1, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v24, v10

    const/4 v10, 0x1

    if-eq v1, v10, :cond_1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    :goto_4
    move/from16 v10, v24

    goto :goto_3

    :cond_0
    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v14

    double-to-float v14, v14

    move v15, v10

    move/from16 v22, v14

    :goto_5
    move/from16 v10, v24

    move v14, v1

    goto :goto_3

    :cond_1
    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v14

    double-to-float v14, v14

    move v15, v10

    move/from16 v21, v14

    goto :goto_5

    :cond_2
    move/from16 v24, v10

    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_3
    move/from16 v24, v10

    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    new-instance v14, Lcom/airbnb/lottie/model/Marker;

    move/from16 v15, v21

    move/from16 v21, v1

    move/from16 v1, v22

    invoke-direct {v14, v11, v15, v1}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v10

    move/from16 v14, v21

    move/from16 v10, v24

    goto :goto_2

    :cond_4
    move/from16 v24, v10

    move/from16 v21, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    :goto_6
    move-object/from16 v25, v7

    move/from16 v22, v10

    goto :goto_1

    :pswitch_1
    move/from16 v24, v10

    move/from16 v21, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/airbnb/lottie/parser/FontCharacterParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    const-wide/16 v14, 0x0

    move-wide/from16 v28, v14

    move-wide/from16 v30, v28

    move-object/from16 v32, v19

    move-object/from16 v33, v32

    const/16 v27, 0x0

    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v11

    if-eqz v11, :cond_e

    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v14, 0x1

    if-eq v11, v14, :cond_c

    const/4 v14, 0x2

    if-eq v11, v14, :cond_b

    const/4 v14, 0x3

    if-eq v11, v14, :cond_a

    const/4 v14, 0x4

    if-eq v11, v14, :cond_9

    const/4 v14, 0x5

    if-eq v11, v14, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_9

    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/ContentModelParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v11

    check-cast v11, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_9

    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v33

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v32

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v30

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v28

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v27

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    new-instance v25, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v26, v1

    invoke-direct/range {v25 .. v33}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v25

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v11

    invoke-virtual {v8, v11, v1}, Landroidx/collection/SparseArrayCompat;->d(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto/16 :goto_6

    :pswitch_2
    move/from16 v24, v10

    move/from16 v21, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    :goto_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_b

    :cond_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/airbnb/lottie/parser/FontParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    move-object/from16 v1, v19

    move-object v11, v1

    move-object v14, v11

    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v18

    if-eqz v18, :cond_15

    move/from16 v22, v10

    sget-object v10, Lcom/airbnb/lottie/parser/FontParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v10

    if-eqz v10, :cond_14

    move-object/from16 v25, v7

    const/4 v7, 0x1

    if-eq v10, v7, :cond_13

    const/4 v7, 0x2

    if-eq v10, v7, :cond_12

    const/4 v7, 0x3

    if-eq v10, v7, :cond_11

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    :goto_e
    move/from16 v10, v22

    move-object/from16 v7, v25

    goto :goto_d

    :cond_11
    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v7

    double-to-float v15, v7

    move-object v8, v10

    goto :goto_e

    :cond_12
    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_13
    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    :cond_14
    move-object/from16 v25, v7

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v1

    move/from16 v10, v22

    goto :goto_d

    :cond_15
    move-object/from16 v25, v7

    move/from16 v22, v10

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    new-instance v7, Lcom/airbnb/lottie/model/Font;

    invoke-direct {v7, v1, v11, v14, v15}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    iget-object v1, v7, Lcom/airbnb/lottie/model/Font;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v10, v22

    move-object/from16 v7, v25

    goto :goto_c

    :cond_16
    move-object/from16 v25, v7

    move/from16 v22, v10

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    move/from16 v10, v22

    goto/16 :goto_b

    :cond_17
    move-object/from16 v25, v7

    move/from16 v22, v10

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    goto/16 :goto_14

    :pswitch_3
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    move-object/from16 v29, v19

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v8

    if-eqz v8, :cond_1f

    sget-object v8, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v14, 0x1

    if-eq v8, v14, :cond_1c

    const/4 v14, 0x2

    if-eq v8, v14, :cond_1b

    const/4 v14, 0x3

    if-eq v8, v14, :cond_1a

    const/4 v11, 0x4

    if-eq v8, v11, :cond_19

    const/4 v11, 0x5

    if-eq v8, v11, :cond_18

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_10

    :cond_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v31

    goto :goto_10

    :cond_19
    const/4 v11, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v30

    goto :goto_10

    :cond_1a
    const/4 v11, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v28

    goto :goto_10

    :cond_1b
    const/4 v11, 0x5

    const/4 v14, 0x3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v27

    goto :goto_10

    :cond_1c
    const/4 v11, 0x5

    const/4 v14, 0x3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/LayerParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v8

    iget-wide v14, v8, Lcom/airbnb/lottie/model/layer/Layer;->d:J

    invoke-virtual {v7, v14, v15, v8}, Landroidx/collection/LongSparseArray;->e(JLjava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x3

    goto :goto_11

    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_10

    :cond_1e
    const/4 v11, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v29

    goto :goto_10

    :cond_1f
    const/4 v11, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    if-eqz v30, :cond_20

    new-instance v26, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-direct/range {v26 .. v31}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v26

    iget-object v7, v1, Lcom/airbnb/lottie/LottieImageAsset;->c:Ljava/lang/String;

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_20
    move-object/from16 v7, v29

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto/16 :goto_14

    :pswitch_4
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    const/4 v1, 0x0

    :cond_22
    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/LayerParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    iget-object v8, v7, Lcom/airbnb/lottie/model/layer/Layer;->e:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    sget-object v11, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v8, v11, :cond_23

    add-int/lit8 v1, v1, 0x1

    :cond_23
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v14, v7, Lcom/airbnb/lottie/model/layer/Layer;->d:J

    invoke-virtual {v2, v14, v15, v7}, Landroidx/collection/LongSparseArray;->e(JLjava/lang/Object;)V

    const/4 v11, 0x4

    if-le v1, v11, :cond_22

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "You have "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_24
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_14

    :pswitch_5
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\."

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aget-object v7, v1, v16

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v23, 0x1

    aget-object v8, v1, v23

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v20, 0x2

    aget-object v1, v1, v20

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v11, 0x4

    if-ge v7, v11, :cond_25

    goto :goto_13

    :cond_25
    if-le v7, v11, :cond_26

    goto :goto_14

    :cond_26
    if-ge v8, v11, :cond_27

    goto :goto_13

    :cond_27
    if-le v8, v11, :cond_28

    goto :goto_14

    :cond_28
    if-ltz v1, :cond_29

    goto :goto_14

    :cond_29
    :goto_13
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v9, v1}, Lcom/airbnb/lottie/LottieComposition;->a(Ljava/lang/String;)V

    :goto_14
    move-object v8, v10

    move/from16 v1, v17

    move/from16 v14, v21

    move/from16 v15, v22

    :goto_15
    move/from16 v10, v24

    move-object/from16 v7, v25

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v25, v7

    move-object v10, v8

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v7

    double-to-float v1, v7

    move-object v8, v10

    move-object/from16 v7, v25

    move v10, v1

    move/from16 v1, v17

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v7

    double-to-float v1, v7

    const v7, 0x3c23d70a    # 0.01f

    sub-float v15, v1, v7

    :goto_16
    move-object v8, v10

    move/from16 v1, v17

    goto :goto_15

    :pswitch_8
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v22, v15

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v7

    double-to-float v14, v7

    goto :goto_16

    :pswitch_9
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v7

    double-to-int v13, v7

    goto :goto_16

    :pswitch_a
    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object v10, v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v7

    double-to-int v12, v7

    goto :goto_16

    :cond_2a
    move/from16 v17, v1

    move-object/from16 v25, v7

    move/from16 v24, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move-object v10, v8

    int-to-float v0, v12

    mul-float v0, v0, v17

    float-to-int v0, v0

    int-to-float v1, v13

    mul-float v1, v1, v17

    float-to-int v1, v1

    new-instance v7, Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->c()F

    move-result v0

    iput-object v7, v9, Lcom/airbnb/lottie/LottieComposition;->k:Landroid/graphics/Rect;

    move/from16 v1, v21

    iput v1, v9, Lcom/airbnb/lottie/LottieComposition;->l:F

    iput v15, v9, Lcom/airbnb/lottie/LottieComposition;->m:F

    move/from16 v1, v24

    iput v1, v9, Lcom/airbnb/lottie/LottieComposition;->n:F

    iput-object v3, v9, Lcom/airbnb/lottie/LottieComposition;->j:Ljava/util/ArrayList;

    iput-object v2, v9, Lcom/airbnb/lottie/LottieComposition;->i:Landroidx/collection/LongSparseArray;

    iput-object v4, v9, Lcom/airbnb/lottie/LottieComposition;->c:Ljava/util/HashMap;

    iput-object v5, v9, Lcom/airbnb/lottie/LottieComposition;->d:Ljava/util/HashMap;

    iput v0, v9, Lcom/airbnb/lottie/LottieComposition;->e:F

    iput-object v10, v9, Lcom/airbnb/lottie/LottieComposition;->h:Landroidx/collection/SparseArrayCompat;

    iput-object v6, v9, Lcom/airbnb/lottie/LottieComposition;->f:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iput-object v0, v9, Lcom/airbnb/lottie/LottieComposition;->g:Ljava/util/ArrayList;

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
