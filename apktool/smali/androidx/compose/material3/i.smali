.class public final synthetic Landroidx/compose/material3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/material3/i;->b:I

    iput-object p1, p0, Landroidx/compose/material3/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/compose/material3/i;->b:I

    iget-object p0, p0, Landroidx/compose/material3/i;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    iget-object p0, p0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    sget-object v0, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/RippleConfiguration;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/RippleConfiguration;->b:Landroidx/compose/material/ripple/RippleAlpha;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroidx/compose/material3/RippleDefaults;->a:Landroidx/compose/material/ripple/RippleAlpha;

    :cond_1
    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    sget-object v0, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/RippleConfiguration;

    iget-object v1, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->v:Landroidx/compose/material/ripple/AndroidRippleNode;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->i2(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->v:Landroidx/compose/material/ripple/AndroidRippleNode;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    new-instance v5, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;

    invoke-direct {v5, p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;-><init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V

    new-instance v6, Landroidx/compose/material3/i;

    const/4 v0, 0x1

    invoke-direct {v6, p0, v0}, Landroidx/compose/material3/i;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->r:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-boolean v3, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->s:Z

    iget v4, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->t:F

    sget-object v0, Landroidx/compose/material/ripple/RippleKt;->a:Landroidx/compose/animation/core/TweenSpec;

    new-instance v1, Landroidx/compose/material/ripple/AndroidRippleNode;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material/ripple/AndroidRippleNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->v:Landroidx/compose/material/ripple/AndroidRippleNode;

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
