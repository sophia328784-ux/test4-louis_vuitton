.class public final synthetic Ll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V
    .locals 0

    .line 11
    iput p1, p0, Ll;->b:I

    iput-object p3, p0, Ll;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    iput-object p2, p0, Ll;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iput-object p2, p0, Ll;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ll;->b:I

    iget-object v1, p0, Ll;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iget-object p0, p0, Ll;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitDeleteHistoryConversationEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitDeleteHistoryConversationEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->o5(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->Z7(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSuggestionCardEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitSuggestionCardEvent;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitEditMessageEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitEditMessageEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->E1(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
