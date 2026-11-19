.class public final synthetic Lcom/vuitton/android/presentation/screen/orders/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/OrderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/a;->b:Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    and-int/2addr p1, v0

    invoke-interface {v7, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array p1, v1, [Landroidx/navigation/Navigator;

    invoke-static {p1, v7}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/a;->b:Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_1

    if-ne v4, v6, :cond_2

    :cond_1
    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$onCreate$2$1$1$1;

    invoke-direct {v4, p0, v5}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$onCreate$2$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, p2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v6, :cond_4

    :cond_3
    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$onCreate$2$1$2$1;

    invoke-direct {v4, p0, p1, v5}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$onCreate$2$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;Landroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, p2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "rootScreen"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    if-ne v4, v6, :cond_7

    :cond_6
    new-instance v4, Lx60;

    const/16 v3, 0x14

    invoke-direct {v4, p0, v3}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_8

    if-ne v8, v6, :cond_9

    :cond_8
    new-instance v8, Lvh0;

    invoke-direct {v8, p0, v1}, Lvh0;-><init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v4, v8

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_a

    if-ne v8, v6, :cond_b

    :cond_a
    new-instance v8, Lvh0;

    invoke-direct {v8, p0, v0}, Lvh0;-><init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_c

    if-ne v1, v6, :cond_d

    :cond_c
    new-instance v1, Lvh0;

    invoke-direct {v1, p0, v2}, Lvh0;-><init>(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;I)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v2, v5

    move-object v5, v8

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    goto :goto_1

    :cond_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
