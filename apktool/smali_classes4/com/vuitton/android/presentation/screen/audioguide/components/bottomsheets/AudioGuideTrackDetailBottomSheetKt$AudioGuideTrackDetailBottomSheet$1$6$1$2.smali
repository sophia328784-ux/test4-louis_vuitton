.class final Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

.field public final synthetic c:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->c:Landroidx/compose/runtime/MutableIntState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget p2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->c:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p2}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    invoke-interface {p2, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    if-le p1, v0, :cond_0

    iget-object p1, p2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object p2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextCoverEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextCoverEvent;

    invoke-static {p2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object p2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPreviousCoverEvent;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPreviousCoverEvent;

    invoke-static {p2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1$2;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
