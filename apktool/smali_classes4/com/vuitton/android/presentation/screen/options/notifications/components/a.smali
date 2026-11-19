.class public final synthetic Lcom/vuitton/android/presentation/screen/options/notifications/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v10, 0x1

    if-eq v3, v4, :cond_2

    move v3, v10

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/2addr v2, v10

    invoke-interface {v12, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v11, "NotificationsPreferencesComposable$lambda$11"

    invoke-static {v11, v1}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_3

    if-ne v6, v7, :cond_4

    :cond_3
    new-instance v13, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1;

    const-string v18, "onPreferenceCheckChanged(Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;Z)V"

    const/16 v19, 0x0

    const/4 v14, 0x2

    const-class v16, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    const-string v17, "onPreferenceCheckChanged"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v13

    :cond_4
    check-cast v6, Lkotlin/reflect/KFunction;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_5

    if-ne v8, v7, :cond_6

    :cond_5
    new-instance v8, Lqg0;

    invoke-direct {v8, v15, v1, v5}, Lqg0;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v5, v8

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_7

    if-ne v8, v7, :cond_8

    :cond_7
    new-instance v8, Lpg0;

    invoke-direct {v8, v15, v10}, Lpg0;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;I)V

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->d:Lkotlin/jvm/functions/Function0;

    move-object/from16 v20, v12

    move-object v12, v7

    move-object v7, v8

    move-object/from16 v8, v20

    invoke-static/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v9, v6

    move-object v6, v8

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->e:Z

    if-eqz v1, :cond_9

    const v1, -0x646ab75b

    invoke-static {v1, v6, v11}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_9
    const v1, -0x646573b4

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, -0x6463ff57

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f140319

    invoke-static {v6, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_a

    if-ne v4, v12, :cond_b

    :cond_a
    new-instance v4, Lqg0;

    invoke-direct {v4, v15, v1, v10}, Lqg0;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/notifications/components/b;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/a;->g:Landroid/content/Context;

    invoke-direct {v2, v0, v15, v9, v1}, Lcom/vuitton/android/presentation/screen/options/notifications/components/b;-><init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v0, -0xbb074d2

    invoke-static {v0, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x6000000

    or-int v13, v0, v1

    const/16 v14, 0xf1

    const/4 v2, 0x0

    move-object v12, v6

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v14}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_c
    const v0, -0x645360f4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_d
    move-object v6, v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
