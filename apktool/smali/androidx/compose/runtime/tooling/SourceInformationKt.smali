.class public abstract Landroidx/compose/runtime/tooling/SourceInformationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "runtime"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;)Landroidx/compose/runtime/tooling/SourceInformation;
    .locals 31

    new-instance v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Landroidx/compose/runtime/tooling/SourceInfoParserState;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v2

    const/16 v3, 0x28

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget v2, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/2addr v1, v4

    iput v1, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    const-string v2, ")"

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b()V

    iget v7, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/2addr v7, v4

    iput v7, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    move v7, v4

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v1, v5

    move v7, v1

    goto :goto_1

    :goto_2
    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_3
    iget v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    iget-object v11, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v4

    const/16 v14, 0x3a

    if-ge v10, v12, :cond_1b

    iget v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/2addr v10, v4

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v3, :cond_1b

    iget v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x4e

    const-string v12, "androidx.compose."

    const-string v15, "c#"

    move/from16 v16, v4

    const/16 v17, 0x0

    const/16 v6, 0x29

    if-eq v10, v11, :cond_16

    iget v11, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    const/16 v13, 0x50

    if-eq v10, v13, :cond_8

    add-int/lit8 v11, v11, 0x2

    iput v11, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    move v4, v5

    :goto_4
    if-gtz v4, :cond_4

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b()V

    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    move/from16 v4, v16

    goto :goto_3

    :cond_4
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->a()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v4, v4, -0x1

    :cond_6
    :goto_6
    iget v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    goto :goto_4

    :cond_7
    const-string v1, "unexpected end"

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->f(Ljava/lang/String;)V

    throw v17

    :cond_8
    add-int/lit8 v11, v11, 0x2

    iput v11, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->a()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v11

    if-nez v11, :cond_15

    const/16 v11, 0x21

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v11

    const-string v13, "!,)"

    if-eqz v11, :cond_d

    iget v11, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_a

    move/from16 v10, v16

    :cond_9
    :goto_8
    const/16 v3, 0x2c

    goto/16 :goto_10

    :cond_a
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v13, v5

    :goto_9
    if-lez v11, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v5

    :goto_a
    if-ge v6, v3, :cond_c

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    iget v4, v4, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->a:I

    if-ne v4, v13, :cond_b

    add-int/lit8 v13, v13, 0x1

    :goto_b
    const/16 v3, 0x28

    const/16 v6, 0x29

    goto :goto_9

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_c
    new-instance v18, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v19, v13

    invoke-direct/range {v18 .. v23}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v18

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    goto :goto_b

    :cond_d
    const-string v3, "!:,)"

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v15, v5, v5, v6}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v11

    if-gez v11, :cond_e

    goto :goto_c

    :cond_e
    add-int v13, v6, v11

    invoke-static {v4, v11, v13, v12}, Lkotlin/text/StringsKt;->K(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_c
    move-object/from16 v21, v4

    goto :goto_d

    :cond_f
    move-object/from16 v21, v17

    :goto_d
    if-eqz v10, :cond_13

    move v4, v5

    :goto_e
    if-ge v4, v3, :cond_12

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v5

    :goto_f
    if-ge v10, v6, :cond_11

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    iget v11, v11, Landroidx/compose/runtime/tooling/ParameterSourceInformation;->a:I

    if-ne v11, v4, :cond_10

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_11
    new-instance v25, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    const/16 v29, 0x6

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v26, v4

    invoke-direct/range {v25 .. v30}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v25

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v26

    goto :goto_e

    :cond_12
    move v10, v5

    :cond_13
    new-instance v18, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v20, 0x0

    move/from16 v19, v3

    invoke-direct/range {v18 .. v23}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v18

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :goto_10
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-eqz v4, :cond_14

    iget v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    :cond_14
    const/16 v3, 0x28

    const/16 v6, 0x29

    goto/16 :goto_7

    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b()V

    iget v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    :goto_11
    move/from16 v4, v16

    const/16 v3, 0x28

    goto/16 :goto_3

    :cond_16
    iget v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    const/16 v24, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->a()Z

    move-result v3

    if-nez v3, :cond_1a

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, ":,)"

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v6

    if-eqz v6, :cond_19

    iget v6, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    const-string v6, ",)"

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    invoke-static {v6, v15, v5, v5, v10}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v11

    if-gez v11, :cond_18

    goto :goto_13

    :cond_18
    add-int v13, v10, v11

    invoke-static {v6, v11, v13, v12}, Lkotlin/text/StringsKt;->K(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    :cond_19
    const/4 v10, 0x2

    move-object/from16 v6, v17

    :goto_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-instance v13, Landroidx/compose/runtime/tooling/ParameterSourceInformation;

    invoke-direct {v13, v11, v4, v6}, Landroidx/compose/runtime/tooling/ParameterSourceInformation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v6

    if-eqz v6, :cond_17

    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    goto :goto_12

    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b()V

    iget v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    goto :goto_11

    :cond_1b
    move/from16 v16, v4

    const/16 v17, 0x0

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-nez v4, :cond_23

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->a()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-nez v4, :cond_22

    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    move/from16 v4, v16

    goto :goto_15

    :cond_1d
    move v4, v5

    :goto_15
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "@"

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->d(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_16

    :cond_1e
    move-object/from16 v6, v17

    :goto_16
    iget v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    const-string v10, "L,:"

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->d(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x4c

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v12

    if-eqz v12, :cond_1f

    iget v12, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    const-string v12, ",:"

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->d(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_17

    :cond_1f
    move-object/from16 v12, v17

    :goto_17
    new-instance v13, Landroidx/compose/runtime/tooling/LocationSourceInformation;

    const/4 v15, -0x1

    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_18

    :cond_20
    move v6, v15

    :goto_18
    if-eqz v12, :cond_21

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :cond_21
    invoke-direct {v13, v6, v10, v15, v4}, Landroidx/compose/runtime/tooling/LocationSourceInformation;-><init>(IIIZ)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget v6, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    goto/16 :goto_14

    :cond_22
    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    goto :goto_19

    :cond_23
    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    :goto_19
    const-string v4, "#"

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_24

    move-object v5, v4

    goto :goto_1a

    :cond_24
    move-object/from16 v5, v17

    :goto_1a
    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/tooling/SourceInfoParserState;->c(C)Z

    move-result v4

    if-eqz v4, :cond_25

    iget v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/tooling/SourceInfoParserState;->b:I

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1b
    move-object v0, v8

    move-object v8, v3

    move v3, v1

    goto :goto_1c

    :cond_25
    move-object/from16 v6, v17

    goto :goto_1b

    :goto_1c
    new-instance v1, Landroidx/compose/runtime/tooling/SourceInformation;

    move-object v4, v2

    move v2, v7

    move-object v7, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroidx/compose/runtime/tooling/SourceInformation;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method
