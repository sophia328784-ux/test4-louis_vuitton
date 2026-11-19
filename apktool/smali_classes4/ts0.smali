.class public final synthetic Lts0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lts0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lts0;->c:Z

    iput-object p1, p0, Lts0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lts0;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lts0;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lts0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lts0;->c:Z

    iput-object p1, p0, Lts0;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lts0;->d:Z

    iput-object p2, p0, Lts0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lts0;->b:I

    iget-boolean v2, v0, Lts0;->d:Z

    iget-object v3, v0, Lts0;->f:Ljava/lang/Object;

    iget-object v4, v0, Lts0;->e:Ljava/lang/Object;

    iget-boolean v0, v0, Lts0;->c:Z

    packed-switch v1, :pswitch_data_0

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v24, p2

    check-cast v24, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v5, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    const-wide/16 v15, 0x0

    const v17, 0xfffffb

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v5 .. v17}, Landroidx/compose/ui/text/TextStyle;->e(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;IJI)Landroidx/compose/ui/text/TextStyle;

    move-result-object v23

    if-eqz v0, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    if-eqz v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v1, 0x3e23d70a    # 0.16f

    :goto_1
    invoke-static {v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v7

    new-instance v15, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v15, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v26, 0x0

    const v27, 0x1fbfa

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_3

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    and-int/2addr v3, v6

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "RepairListEmptyScreen$lambda$0"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v3, "careservices_empty_view"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I0:I

    const v4, 0x7f1410d4

    invoke-static {v13, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1410d3

    invoke-static {v13, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    const v7, -0xdbe4926

    const v9, 0x7f14089c

    invoke-static {v13, v7, v9, v13}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    const v7, 0x55f60318

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    move-object v7, v6

    :goto_4
    if-eqz v2, :cond_6

    const v9, -0xdbe3460

    const v11, 0x7f140899

    invoke-static {v13, v9, v11, v13}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    const v9, 0x55f89d98

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    move-object v9, v6

    :goto_5
    if-eqz v2, :cond_7

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CareServicesRequestNewRepairAction;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CareServicesRequestNewRepairAction;

    move-object v11, v2

    goto :goto_6

    :cond_7
    move-object v11, v6

    :goto_6
    if-eqz v0, :cond_8

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CareServicesHowItWorksAction;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CareServicesHowItWorksAction;

    :cond_8
    move-object v12, v6

    const/4 v15, 0x0

    const/16 v16, 0x44

    move v2, v3

    const/4 v3, 0x0

    move-object v6, v7

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->d(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;III)V

    goto :goto_7

    :cond_9
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
