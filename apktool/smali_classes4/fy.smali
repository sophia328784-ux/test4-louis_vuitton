.class public final synthetic Lfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lfy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfy;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p2, p0, Lfy;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lfy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfy;->d:Z

    iput-object p2, p0, Lfy;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lfy;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lfy;->d:Z

    iget-object p0, p0, Lfy;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    packed-switch v0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v1, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    and-int/2addr p1, v3

    invoke-interface {v9, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "PSPStoreModeSearchHeader$lambda$0$1"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v9, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, p1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->p:I

    invoke-static {p1, v9, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    const p1, 0x7f14036c

    invoke-static {v9, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    sget-object p1, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeSearchHeaderKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v3, :cond_3

    if-ne p0, v1, :cond_2

    const p0, 0x723317cf

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_2
    const p0, 0x7232fda6

    invoke-static {v9, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_3
    const p0, 0x72330a35    # 3.54625E30f

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v7, 0x0

    move-object v10, v9

    move-wide v8, p0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object v9, v10

    if-eqz v4, :cond_4

    const p0, -0x2bce3740

    invoke-static {p0, v9, p2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p0

    iget v6, p0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    const/4 v10, 0x0

    const/4 v11, 0x4

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/designkit/components/components/LVNotificationIconKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_4
    const p0, -0x2bca727f

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_4

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v1, :cond_7

    move p2, v3

    goto :goto_5

    :cond_7
    move p2, v2

    :goto_5
    and-int/2addr p1, v3

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "FeedEventBellIconButton$lambda$0"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    if-eqz v4, :cond_8

    const p2, -0x10b441db

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->R:I

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_8
    const p2, -0x10b304d5

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Q:I

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    invoke-static {p2, v5, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    sget-object p2, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    if-eq p0, v3, :cond_a

    if-ne p0, v1, :cond_9

    const p0, 0x31029f25

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    move-wide v3, v1

    goto :goto_8

    :cond_9
    const p0, 0x31028986

    invoke-static {v5, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_a
    const p0, 0x3102945f

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :goto_8
    const p0, 0x7f140a01

    invoke-static {v5, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
