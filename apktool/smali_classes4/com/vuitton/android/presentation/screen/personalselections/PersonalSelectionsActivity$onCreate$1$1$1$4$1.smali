.class final Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$4$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$4$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
