.class public final Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final f:Lkotlinx/coroutines/flow/StateFlow;

.field public final g:Lkotlinx/coroutines/flow/SharedFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p1

    sget-object p3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    invoke-virtual {p3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-static {p2, p3, v1}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    iget-boolean p2, p2, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    if-eqz p2, :cond_0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    invoke-direct {p2, p1}, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    :goto_0
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->c:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;

    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, p3

    :goto_2
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_8

    if-eqz p2, :cond_5

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    goto :goto_3

    :cond_5
    move-object p1, p3

    :goto_3
    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;->a:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object p1, p3

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v4, v9

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v8

    :goto_6
    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;-><init>(ZLjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p2, 0x7

    invoke-static {v9, v9, p3, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->e:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;

    invoke-direct {v2, p3, v8, p3}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->g:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method


# virtual methods
.method public final C9()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->g:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final F5()V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    iget-boolean v2, v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    const/4 v5, 0x0

    const/16 v6, 0x1b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ZLjava/lang/String;ZII)Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$ConfirmGiftMessageEvent;->a:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$ConfirmGiftMessageEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->i3(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl$validateDraft$2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl$validateDraft$2;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final i3(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel;)V
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$GiftMessageScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "gift_message"

    const-string v4, "gift_message"

    const-string v5, "cart_page"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$PrintMyMessageEvent;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "gift_message"

    const-string v4, "print_my_message"

    const-string v5, "cart_gift_message"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$BlankCardGiftEvent;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "gift_message"

    const-string v4, "blank_card_gift"

    const-string v5, "cart_gift_message"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$ConfirmGiftMessageEvent;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "gift_message"

    const-string v4, "confirm_gift_message"

    const-string v5, "cart_gift_message"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$DiscoverGiftingExperienceEvent;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "gift_message"

    const-string v3, "discover_gifting_experience"

    const-string v4, "cart_gift_message"

    const-string v5, "click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final m2(Z)V
    .locals 8

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    const/4 v6, 0x0

    const/16 v7, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ZLjava/lang/String;ZII)Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v3, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$BlankCardGiftEvent;->a:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$BlankCardGiftEvent;

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$PrintMyMessageEvent;->a:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$PrintMyMessageEvent;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->i3(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel;)V

    return-void

    :cond_1
    move p1, v3

    goto :goto_0
.end method

.method public final y9(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-char v3, v1, v2

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x6

    if-gt v1, v4, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [C

    aput-char v3, v0, v2

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    rsub-int/lit8 v9, v2, 0x6

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ZLjava/lang/String;ZII)Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v7

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
