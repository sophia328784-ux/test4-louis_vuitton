.class final Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$27$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt$PLPCategoryComposable$27$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
