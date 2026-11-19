.class public final synthetic Lcom/vuitton/android/presentation/screen/aicompanion/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/a;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

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

    invoke-interface {v7, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/a;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->u:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz p1, :cond_9

    iget-object p2, v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->q:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v1, v8, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$onCreate$1$1$1$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_2
    move-object v9, v1

    check-cast v9, Lkotlin/reflect/KFunction;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    if-ne v1, v8, :cond_4

    :cond_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$onCreate$1$1$2$1;

    const-string v5, "launchSpeechRecognizer()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    const-string v4, "launchSpeechRecognizer"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_4
    move-object v10, v1

    check-cast v10, Lkotlin/reflect/KFunction;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5

    if-ne v1, v8, :cond_6

    :cond_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$onCreate$1$1$3$1;

    const-string v5, "onProductClicked-1Zqi3gk(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    const-string v4, "onProductClicked"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_6
    move-object v11, v1

    check-cast v11, Lkotlin/reflect/KFunction;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v1, v8, :cond_8

    :cond_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$onCreate$1$1$4$1;

    const-string v5, "onWishlistToggled-5tQGX2Y(Ljava/lang/String;ZZ)V"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-class v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    const-string v4, "onWishlistToggled"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_8
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v3, v10

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v11

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_9
    const-string p0, "contributionLinkNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
