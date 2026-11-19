.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p2, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingComposableKt$ContextualSizingComposable$1$1$1;

    const/4 p2, 0x0

    invoke-direct {v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingComposableKt$ContextualSizingComposable$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p1, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;->c:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/a;->d:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt;->a(Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
