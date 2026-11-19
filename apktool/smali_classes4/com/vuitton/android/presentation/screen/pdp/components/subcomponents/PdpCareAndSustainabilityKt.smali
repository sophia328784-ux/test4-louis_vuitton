.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpCareAndSustainabilityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    move-object/from16 v3, p2

    move/from16 v4, p4

    const-string v0, "PdpCareAndSustainability"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, -0x609b7045

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1

    or-int/lit8 v2, v4, 0x6

    :goto_0
    move-object/from16 v6, p1

    goto :goto_2

    :cond_1
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v2, v4

    goto :goto_0

    :goto_2
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_3

    :cond_3
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v2, v5

    and-int/lit16 v5, v4, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_4

    :cond_4
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v2, 0x93

    const/16 v7, 0x92

    if-eq v5, v7, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v12, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v1, :cond_7

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p0, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_7
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "pdp_careAndSustainability_list"

    invoke-static {p0, v0}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v0, Lu9;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v1}, Lu9;-><init>(Lkotlin/jvm/functions/Function1;I)V

    const v1, -0x1aa86b6

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ComposableSingletons$PdpCareAndSustainabilityKt;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ComposableSingletons$PdpCareAndSustainabilityKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ComposableSingletons$PdpCareAndSustainabilityKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ComposableSingletons$PdpCareAndSustainabilityKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit8 v0, v2, 0x70

    const v1, 0x36c00

    or-int v13, v0, v1

    const/4 v14, 0x4

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v14}, Lcom/vuitton/android/presentation/compose/components/CollapsingDetailListKt;->c(Landroidx/compose/ui/Modifier;Ljava/util/List;JLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_6
    move-object v1, p0

    goto :goto_7

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_6

    :goto_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Lh;

    const/16 v6, 0x9

    move-object/from16 v2, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
