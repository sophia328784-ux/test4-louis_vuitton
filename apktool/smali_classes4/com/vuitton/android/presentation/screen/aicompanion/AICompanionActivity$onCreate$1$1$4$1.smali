.class final synthetic Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$onCreate$1$1$4$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
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


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->Z1(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ld;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Ld;-><init>(Ljava/lang/Object;Ljava/lang/String;ZI)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->s:Ld;

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->t:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p1, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
