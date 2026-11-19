.class final Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;
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
        "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;

    invoke-direct {v3, p1, p2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVariationClickedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v3, p2, v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpComposableKt$PdpComposable$14$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    const/4 p2, 0x6

    invoke-static {p0, p1, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->Db(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;I)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
