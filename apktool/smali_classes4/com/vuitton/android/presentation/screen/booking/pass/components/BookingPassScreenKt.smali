.class public abstract Lcom/vuitton/android/presentation/screen/booking/pass/components/BookingPassScreenKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x6dcc365

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p4, v1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v6, :cond_3

    move v2, v8

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_3
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f1404a8

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "BookingPassScreen"

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v6, :cond_5

    :cond_4
    new-instance v8, La4;

    const/16 v6, 0xd

    invoke-direct {v8, v1, v6}, La4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    new-instance v2, Lqd;

    const/4 v7, 0x5

    invoke-direct {v2, v7, v1, v4}, Lqd;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const v1, 0xe30829

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    new-instance v1, Lf1;

    const/16 v2, 0xb

    invoke-direct {v1, v3, v5, v2}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, 0x3c87faf4

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    const v19, 0x30000030

    const/16 v20, 0x13c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v6 .. v20}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_6
    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v0, Lu;

    const/16 v2, 0xf

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
