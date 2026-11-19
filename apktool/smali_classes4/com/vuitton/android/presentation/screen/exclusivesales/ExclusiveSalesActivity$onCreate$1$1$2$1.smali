.class final synthetic Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity$onCreate$1$1$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
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
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;->q:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModel;->C8(Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesDestinations$RouteToProductListPage;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesDestinations$RouteToProductListPage;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesDestinations$RouteToProductListPage;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
