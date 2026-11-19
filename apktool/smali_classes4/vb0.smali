.class public final synthetic Lvb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/runtime/State;

.field public final synthetic f:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb0;->b:Landroid/content/Context;

    iput-object p2, p0, Lvb0;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p3, p0, Lvb0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lvb0;->e:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lvb0;->f:Landroidx/compose/ui/unit/Density;

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarScope;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p3

    check-cast v3, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-object/from16 v12, p4

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->k()Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v2

    iget-object v10, v0, Lvb0;->b:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lvb0;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-virtual {v2, v12}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->h()Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/screen/main/components/MainNavBarKt;->d(Landroidx/navigation/NavDestination;Lkotlin/reflect/KClass;)Z

    move-result v4

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "MainNavBar$lambda$5$1$0$0$5$0"

    invoke-direct {v13, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lvb0;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit16 v9, v1, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v19, 0x0

    const/16 v14, 0x100

    if-le v9, v14, :cond_0

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    and-int/lit16 v15, v1, 0x180

    if-ne v15, v14, :cond_2

    :cond_1
    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    move/from16 v15, v19

    :goto_0
    or-int/2addr v8, v15

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v8, v15

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_3

    if-ne v15, v11, :cond_4

    :cond_3
    new-instance v15, Lpp;

    const/16 v8, 0x15

    invoke-direct {v15, v7, v3, v2, v8}, Lpp;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v17, v15

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x1b

    move v2, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->a()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v7

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    if-le v9, v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    and-int/lit16 v1, v1, 0x180

    if-ne v1, v2, :cond_7

    :cond_6
    const/16 v19, 0x1

    :cond_7
    or-int v1, v7, v19

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_8

    if-ne v2, v11, :cond_9

    :cond_8
    move-object v8, v6

    goto :goto_1

    :cond_9
    move-object v8, v6

    move-object v1, v11

    goto :goto_2

    :goto_1
    new-instance v6, Ls0;

    move-object v1, v11

    const/16 v11, 0x8

    move-object v9, v3

    move v7, v4

    invoke-direct/range {v6 .. v11}, Ls0;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v6

    :goto_2
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x2

    invoke-static {v13, v14, v2, v6}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget v2, Landroidx/compose/material3/TooltipDefaults;->b:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Density;

    invoke-interface {v7, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v2

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v7

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_a

    if-ne v10, v1, :cond_b

    :cond_a
    new-instance v10, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;

    invoke-direct {v10, v2}, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;-><init>(I)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v10, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;

    invoke-static {v12}, Landroidx/compose/material3/TooltipKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TooltipState;

    move-result-object v7

    new-instance v1, Lpf;

    invoke-direct {v1, v4, v8, v6}, Lpf;-><init>(ZLjava/lang/Object;I)V

    const v2, 0xaaf7d30

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    new-instance v1, Lhg;

    move-object v2, v1

    iget-object v1, v0, Lvb0;->e:Landroidx/compose/runtime/State;

    iget-object v0, v0, Lvb0;->f:Landroidx/compose/ui/unit/Density;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lhg;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/ui/unit/Density;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;ZLcom/vuitton/android/designkit/ui/theme/atoms/LVNavBarScope;Ljava/lang/String;)V

    const v1, -0x191d2b8

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const v13, 0x6000030

    const/16 v14, 0xf0

    move-object v6, v10

    const/4 v10, 0x0

    move-object v8, v7

    move-object v7, v11

    move-object v11, v0

    invoke-static/range {v6 .. v14}, Landroidx/compose/material3/TooltipKt;->b(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
