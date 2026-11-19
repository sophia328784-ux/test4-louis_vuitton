.class final synthetic Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$4$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;",
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
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
