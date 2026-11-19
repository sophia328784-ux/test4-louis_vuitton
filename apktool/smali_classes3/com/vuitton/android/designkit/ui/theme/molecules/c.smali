.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/c;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/material3/SnackbarData;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 v0, p3, 0x13

    const/16 v1, 0x12

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1}, Landroidx/compose/material3/SnackbarData;->a()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_6

    iget-boolean v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->e:Z

    if-ne v1, v2, :cond_6

    const v1, 0x5cfbd193

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/c;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v2, :cond_5

    :cond_4
    new-instance v4, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt$LVSnackbarInternal$1$1$1;

    invoke-direct {v4, p0, v3}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt$LVSnackbarInternal$1$1$1;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_6
    const p0, 0x5cfe00e8

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    :cond_7
    if-nez v3, :cond_8

    const/4 p0, -0x1

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    :goto_4
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, -0x4f94ad58

    invoke-static {p2, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :pswitch_1
    const p0, 0x5d0bebba

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_2
    const p0, 0x5d09e4b8

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_3
    const p0, 0x5d07e85e

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_4
    const p0, 0x5d05ed97

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_5
    const p0, 0x5d03cb75

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_6
    const p0, 0x5d01bf5d

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_7
    const p0, 0x5cffcf9b

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :pswitch_8
    const p0, -0x4f94323f

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->k(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    and-int/lit8 p3, p3, 0xe

    invoke-static {p1, p0, p2, p3}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->d(Landroidx/compose/material3/SnackbarData;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
