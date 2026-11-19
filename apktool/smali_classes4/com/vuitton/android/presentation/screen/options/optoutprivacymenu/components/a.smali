.class public final synthetic Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-static {p4, p1, p2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p4

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_0

    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p4, :cond_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutPrivacyMenuNavHostKt$OptOutPrivacyMenuNavHost$1$1$1$1$1;

    const/4 p4, 0x0

    invoke-direct {v0, p2, p4}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutPrivacyMenuNavHostKt$OptOutPrivacyMenuNavHost$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p3, p1, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 p2, 0x0

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;->c:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/a;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {p4, p0, p3, p2}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutMenuScreenKt;->b(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object p1
.end method
