.class public final Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lkotlin/jvm/functions/Function4;


# direct methods
.method public constructor <init>(Ljava/util/List;FFFLkotlin/jvm/functions/Function4;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput p2, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->c:F

    iput p3, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->d:F

    iput p4, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->e:F

    iput-object p5, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p4

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    const/16 v0, 0x20

    if-nez p4, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, v0

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p1, p4

    :cond_3
    and-int/lit16 p4, p1, 0x93

    const/16 v1, 0x92

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p4, v1, :cond_4

    move p4, v2

    goto :goto_3

    :cond_4
    move p4, v3

    :goto_3
    and-int/lit8 v1, p1, 0x1

    invoke-interface {p3, v1, p4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p4

    if-eqz p4, :cond_d

    sget-object p4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p4, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    and-int/lit8 v1, p1, 0x7e

    const v4, 0x629026c4

    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    const/4 v9, 0x0

    const/16 v10, 0xb

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->c:F

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-nez p2, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    new-instance v6, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$2$1$1$1;

    iget v7, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->e:F

    invoke-direct {v6, v7}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$2$1$1$1;-><init>(F)V

    invoke-static {v4, v5, v6, p3, v3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v5, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->d:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    and-int/lit8 v5, p1, 0x70

    xor-int/lit8 v5, v5, 0x30

    if-le v5, v0, :cond_6

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    and-int/lit8 p1, p1, 0x30

    if-ne p1, v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez v2, :cond_9

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, v0, :cond_a

    :cond_9
    new-instance p1, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$2$1$1$2$1;

    invoke-direct {p1, p2}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$2$1$1$2$1;-><init>(I)V

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v3, p1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {p3, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_b
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->o()V

    :goto_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {p3, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, p1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    shr-int/lit8 p2, v1, 0x3

    and-int/lit8 p2, p2, 0xe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function4;

    invoke-interface {p0, p1, p4, p3, p2}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_d
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
