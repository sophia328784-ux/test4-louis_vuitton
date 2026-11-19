.class public final synthetic Lp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lp4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lp4;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZIB)V
    .locals 0

    .line 9
    iput p2, p0, Lp4;->b:I

    iput-boolean p1, p0, Lp4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lp4;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean p0, p0, Lp4;->c:Z

    packed-switch v0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v2, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    and-int/2addr p1, v4

    invoke-interface {v9, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "SearchResultCountBarStoreMode$lambda$0$1"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v9, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, p1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->p:I

    invoke-static {p1, v9, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    const p1, 0x7f14036c

    invoke-static {v9, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/4 v7, 0x0

    move-object v10, v9

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    if-eqz p0, :cond_2

    const p0, -0x39324a53

    invoke-static {p0, v10, p2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p0

    iget v6, p0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    move-object v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x4

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/designkit/components/components/LVNotificationIconKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v10, v9

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_2
    const p0, -0x392ed0a6

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_3

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v1

    :cond_4
    move-object v10, v9

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v2, :cond_5

    move p2, v4

    goto :goto_4

    :cond_5
    move p2, v3

    :goto_4
    and-int/2addr p1, v4

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p0, :cond_6

    const p0, 0x7f08025b

    goto :goto_5

    :cond_6
    const p0, 0x7f08025a

    :goto_5
    invoke-static {p0, v5, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p1, "LVSoundButton$lambda$0"

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const p0, 0x7f140372

    invoke-static {v5, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :cond_7
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v2, :cond_8

    move p2, v4

    goto :goto_7

    :cond_8
    move p2, v3

    :goto_7
    and-int/2addr p1, v4

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "LVPlayPauseButton$lambda$0"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/vuitton/android/designkit/ui/theme/IconSize;->a:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz p0, :cond_9

    const p1, 0x52c262cd

    invoke-interface {v5, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->a0:I

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_9
    const p1, 0x52c38dc8

    invoke-interface {v5, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Z:I

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_8
    invoke-static {p1, v5, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    if-eqz p0, :cond_a

    const p0, 0x7f140351

    goto :goto_9

    :cond_a
    const p0, 0x7f140356

    :goto_9
    invoke-static {v5, p0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    const/16 v7, 0x8

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_a

    :cond_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v2, :cond_c

    move p2, v4

    goto :goto_b

    :cond_c
    move p2, v3

    :goto_b
    and-int/2addr p1, v4

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "CalendarArrows$lambda$0$0"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    invoke-static {p1, v5, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    const p1, 0x7f14035a

    invoke-static {v5, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_d

    const p0, 0x14101157

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_c
    move-wide v3, p0

    goto :goto_d

    :cond_d
    const p0, 0x141171d8

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_c

    :goto_d
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_e

    :cond_e
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v2, :cond_f

    move p2, v4

    goto :goto_f

    :cond_f
    move p2, v3

    :goto_f
    and-int/2addr p1, v4

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "CalendarArrows$lambda$0$1"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {p1, v5, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    const p1, 0x7f140343

    invoke-static {v5, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_10

    const p0, 0x20acd20

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_10
    move-wide v3, p0

    goto :goto_11

    :cond_10
    const p0, 0x20c2da1

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_10

    :goto_11
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_12

    :cond_11
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p2, 0x282179f

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "TopAssetWithGradients$lambda$0$3"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    if-eqz p0, :cond_12

    const p0, -0x1f01714a

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_13

    :cond_12
    const p0, -0x1effb3aa

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_13
    invoke-static {p0, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, v0}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p2, -0x76e140c9

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "EditorialCardBackground$lambda$0$3"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    if-eqz p0, :cond_13

    const p0, -0x43941080

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    :goto_14
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_15

    :cond_13
    const p0, -0x43940b20

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    goto :goto_14

    :goto_15
    invoke-static {p0, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, v0}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt;->e(ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
