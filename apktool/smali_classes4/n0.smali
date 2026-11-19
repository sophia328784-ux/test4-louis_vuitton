.class public final synthetic Ln0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    const/16 p2, 0x11

    iput p2, p0, Ln0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0;->c:Ljava/lang/Object;

    iput-object p3, p0, Ln0;->d:Ljava/lang/Object;

    iput-object p4, p0, Ln0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 14
    const/16 v0, 0x17

    iput v0, p0, Ln0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ln0;->e:Ljava/lang/Object;

    iput-object p3, p0, Ln0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Ln0;->b:I

    iput-object p1, p0, Ln0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ln0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ln0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)V
    .locals 0

    .line 16
    const/16 p4, 0x14

    iput p4, p0, Ln0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ln0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ln0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Ln0;->b:I

    const/4 v2, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Ln0;->e:Ljava/lang/Object;

    iget-object v9, v0, Ln0;->d:Ljava/lang/Object;

    iget-object v0, v0, Ln0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast v9, Landroid/content/Context;

    check-cast v8, Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    iget-object v2, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;->b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;

    invoke-direct {v4, v3, v7}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V

    invoke-static {v3, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    goto :goto_1

    :cond_0
    instance-of v0, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;

    if-eqz v0, :cond_1

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOsaPage;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    if-eqz v0, :cond_7

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    iget-object v0, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;->a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    if-eq v1, v6, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    if-eq v1, v4, :cond_3

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;

    invoke-direct {v1, v0, v7}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v9}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;

    invoke-direct {v1, v0, v7}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v9}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;

    invoke-direct {v1, v0, v7}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v9}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;

    invoke-direct {v1, v0, v7}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v9}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_7
    invoke-static {}, Lv40;->g()V

    :goto_2
    return-object v7

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object v1, v9, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->a:Ljava/lang/String;

    check-cast v8, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;

    move-object/from16 v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->c:Lkotlin/jvm/functions/Function2;

    iget-object v3, v8, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->e:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    goto :goto_4

    :pswitch_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->HORIZON_SPEAKER:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->TRUNK_SPEAKERS:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_SNEAKERS:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->WATCH_V3_FAQ:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    goto :goto_3

    :pswitch_6
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->EARPHONES:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    :goto_3
    invoke-interface {v2, v9, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    return-object v7

    :pswitch_7
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->l:Z

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_5

    :cond_8
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/16 v17, 0x0

    const/16 v18, 0x6f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v8, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object v0

    :pswitch_8
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->m:Z

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    if-eqz v2, :cond_9

    if-nez v13, :cond_9

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v5, v6

    :cond_9
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    if-eqz v5, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    move-object/from16 v17, v0

    goto :goto_7

    :cond_a
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    goto :goto_6

    :goto_7
    const/16 v18, 0x3b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_d

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_d

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    const-string v0, "Initial field value type unsupported for "

    const-string v2, "!"

    invoke-static {v0, v1, v2}, Llc0;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    :goto_8
    invoke-virtual {v9, v1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->n(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Ln0;

    const/16 v3, 0x18

    invoke-direct {v2, v1, v9, v8, v3}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt;->a(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_9
    return-object v7

    :pswitch_a
    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object/from16 v10, p1

    check-cast v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v2, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    instance-of v5, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;

    if-eqz v5, :cond_1a

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;->a:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v5, v0, :cond_1b

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v1, v0, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;->a:Ljava/lang/String;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_a

    :cond_10
    move-object v5, v7

    :goto_a
    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;

    if-eqz v5, :cond_11

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;->b:Ljava/util/List;

    goto :goto_b

    :cond_11
    move-object v0, v7

    :goto_b
    if-nez v0, :cond_12

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v3, v1, :cond_13

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eq v3, v1, :cond_13

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v3, v1, :cond_14

    :cond_13
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$prefillRelated$lambda$0$1$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$prefillRelated$lambda$0$1$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    :cond_14
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-eqz v1, :cond_18

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-static {v8, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModelKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_c

    :cond_16
    move-object v6, v7

    :goto_c
    check-cast v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    if-nez v6, :cond_17

    goto :goto_d

    :cond_17
    move-object v7, v6

    goto :goto_e

    :cond_18
    :goto_d
    if-eqz v5, :cond_19

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumDependentValueUiModel;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    :cond_19
    :goto_e
    invoke-static {v2, v0, v7, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;I)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;

    move-result-object v13

    const/16 v19, 0x0

    const/16 v20, 0x3fb

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    goto :goto_f

    :cond_1a
    instance-of v4, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;

    if-eqz v4, :cond_1b

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;->a:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v2, v0, :cond_1b

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v1, v0, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    sget v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/ComposableSingletons$DistantRepairBottomSheetDatePickerKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/ComposableSingletons$DistantRepairBottomSheetDatePickerKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/ComposableSingletons$DistantRepairBottomSheetDatePickerKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v7, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->b:Ljava/util/List;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$lambda$4$1$1$0$2$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$lambda$4$1$1$0$2$0$$inlined$items$default$1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$lambda$4$1$1$0$2$0$$inlined$items$default$3;

    invoke-direct {v4, v2, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$lambda$4$1$1$0$2$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$lambda$4$1$1$0$2$0$$inlined$items$default$4;

    invoke-direct {v2, v0, v8, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt$DistantRepairBottomSheetDatePicker$lambda$4$1$1$0$2$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x2fd4df92

    invoke-direct {v0, v5, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v3, v7, v4, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/time/LocalDate;

    sget v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    check-cast v8, Landroidx/navigation/compose/DialogNavigator;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$invoke$lambda$2$lambda$1$$inlined$onDispose$1;

    invoke-direct {v1, v8, v9, v0}, Landroidx/navigation/compose/DialogHostKt$DialogHost$1$2$invoke$lambda$2$lambda$1$$inlined$onDispose$1;-><init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    return-object v1

    :pswitch_e
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast v9, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast v8, Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v2, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget v3, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sub-float/2addr v2, v3

    invoke-interface {v9, v2}, Landroidx/compose/foundation/gestures/ScrollScope;->e(F)F

    move-result v3

    iget-object v4, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1c

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    :cond_1c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast v9, Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v13, v8

    check-cast v13, Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    sget-object v1, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    iget-object v4, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->A:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/TextRange;

    iget-wide v11, v4, Landroidx/compose/ui/text/TextRange;->a:J

    iget-object v4, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->B:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/TextRange;

    iget-wide v14, v4, Landroidx/compose/ui/text/TextRange;->a:J

    iget-object v2, v2, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    move-wide/from16 v16, v11

    move-wide v11, v14

    iget-object v15, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->y:Landroidx/compose/ui/graphics/AndroidPaint;

    iget-wide v3, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->z:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v15, v3, v4}, Landroidx/compose/ui/graphics/AndroidPaint;->c(J)V

    move-object v14, v2

    move-wide/from16 v11, v16

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->a(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/AndroidPaint;)V

    goto :goto_12

    :cond_1d
    move-object v14, v2

    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v14, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    const-wide/16 v3, 0x10

    cmp-long v0, v0, v3

    if-nez v0, :cond_1e

    goto :goto_10

    :cond_1e
    move-object v7, v2

    :goto_10
    if-eqz v7, :cond_1f

    iget-wide v0, v7, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_11

    :cond_1f
    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->c:J

    :goto_11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->d(J)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->c(J)V

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->a(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/AndroidPaint;)V

    goto :goto_12

    :cond_20
    iget-wide v0, v9, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v15, v3, v4}, Landroidx/compose/ui/graphics/AndroidPaint;->c(J)V

    iget-wide v11, v9, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->a(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/AndroidPaint;)V

    :cond_21
    :goto_12
    invoke-virtual {v14}, Landroidx/compose/ui/text/TextLayoutResult;->e()Z

    move-result v0

    iget-object v1, v14, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    if-eqz v0, :cond_23

    iget v0, v1, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/TextOverflow;->d:I

    if-ne v0, v2, :cond_22

    goto :goto_13

    :cond_22
    move v5, v6

    :cond_23
    :goto_13
    if-eqz v5, :cond_24

    iget-wide v2, v14, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    const/16 v0, 0x20

    shr-long v6, v2, v0

    long-to-int v4, v6

    int-to-float v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-float v2, v2

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v8, v2

    shl-long v2, v3, v0

    and-long/2addr v6, v8

    or-long/2addr v2, v6

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Canvas;->p()V

    invoke-static {v10, v0}, Landroidx/compose/ui/graphics/Canvas;->g(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    :cond_24
    iget-object v0, v1, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    if-nez v1, :cond_25

    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_25
    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    if-nez v1, :cond_26

    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->e:Landroidx/compose/ui/graphics/Shadow;

    :cond_26
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->p:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v0, :cond_27

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_27
    move-object/from16 v20, v0

    :try_start_0
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->e()Landroidx/compose/ui/graphics/Brush;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->a:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    if-eqz v16, :cond_29

    if-eq v2, v0, :cond_28

    :try_start_1
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v3

    move/from16 v17, v3

    goto :goto_14

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_28
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_14
    iget-object v14, v14, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v1

    move-object v15, v10

    :try_start_2
    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/text/MultiParagraph;->j(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v15

    goto :goto_17

    :catchall_1
    move-exception v0

    move-object v10, v15

    goto :goto_18

    :cond_29
    move-object/from16 v18, v1

    if-eq v2, v0, :cond_2a

    :try_start_3
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v0

    :goto_15
    move-wide/from16 v16, v0

    goto :goto_16

    :cond_2a
    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->c:J

    goto :goto_15

    :goto_16
    iget-object v14, v14, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v15, v10

    :try_start_4
    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/text/MultiParagraph;->i(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v10, v15

    :goto_17
    if-eqz v5, :cond_2c

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    goto :goto_19

    :goto_18
    if-eqz v5, :cond_2b

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_2b
    throw v0

    :cond_2c
    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;

    invoke-direct {v2, v1, v7}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Landroidx/compose/foundation/gestures/ContentInViewNode;

    check-cast v9, Lkotlinx/coroutines/Job;

    check-cast v8, Landroidx/compose/foundation/gestures/NestedScrollScope;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->r:Z

    if-eqz v2, :cond_2d

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_2d
    const/high16 v3, -0x40800000    # -1.0f

    :goto_1a
    mul-float v2, v3, v1

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(F)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v4

    sget-object v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->a:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->b:I

    invoke-interface {v8, v2, v4, v5}, Landroidx/compose/foundation/gestures/NestedScrollScope;->b(IJ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(J)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scroll animation cancelled because scroll was not consumed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {v9, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    check-cast v9, Landroidx/navigation/NavHostController;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    const-string v3, "certificate"

    if-eqz v0, :cond_30

    iget-object v0, v9, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2f
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0, v7, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_1b

    :cond_30
    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    if-eqz v0, :cond_31

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;->i:Ljava/lang/String;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_31
    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz v0, :cond_33

    iget-object v0, v9, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_32
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;-><init>(Ljava/lang/String;Z)V

    invoke-static {v9, v0, v7, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_33
    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    check-cast v9, Landroidx/navigation/NavHostController;

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;

    sget v3, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result v3

    if-eqz v3, :cond_34

    sget v3, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v3, v7, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_34
    new-instance v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    if-nez v9, :cond_35

    move-object v9, v8

    :cond_35
    invoke-interface {v0, v2, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    check-cast v9, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    move-object v13, v9

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListState;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v12, v5

    move v14, v12

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v14, 0x1

    if-ltz v14, :cond_36

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v4, v11}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;ILandroidx/compose/foundation/lazy/LazyListState;ILkotlin/jvm/functions/Function1;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x799532c4

    invoke-direct {v8, v9, v6, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v3, v7, v4, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v12, v2

    move v14, v5

    goto :goto_1c

    :cond_36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v7

    :cond_37
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Ljava/util/List;

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-object v3, v9

    check-cast v3, Ljava/util/List;

    check-cast v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->j()Z

    move-result v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/ProfileFormMapperKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    check-cast v0, Landroidx/navigation3/runtime/NavBackStack;

    check-cast v9, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    if-eqz v2, :cond_38

    new-instance v10, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    iget-object v11, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;->b:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v10}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->q5()V

    goto :goto_1d

    :cond_38
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Ljava/lang/String;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    check-cast v8, Landroidx/compose/material3/TooltipState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    new-instance v2, Landroidx/compose/material3/internal/b;

    invoke-direct {v2, v9, v8, v6}, Landroidx/compose/material3/internal/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v4, v0, v2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1d
    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    move-object v1, v9

    check-cast v1, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    check-cast v8, Landroid/content/Context;

    move-object/from16 v3, p1

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->X3()V

    if-eqz v3, :cond_39

    invoke-static {v8}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    :cond_39
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1e
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Lk2;

    invoke-direct {v1, v9, v5}, Lk2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$lambda$12$lambda$11$$inlined$onDispose$1;

    invoke-direct {v2, v8, v0, v1}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$lambda$12$lambda$11$$inlined$onDispose$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v2

    :pswitch_1f
    check-cast v0, Ljava/lang/String;

    check-cast v9, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/text/KeyboardActionScope;

    sget v2, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionSearchBarKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz v9, :cond_3a

    invoke-interface {v9}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_3a
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_20
    check-cast v0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Lkotlinx/coroutines/CompletableDeferred;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    sget v2, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v1, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$2$1$listener$1;

    invoke-direct {v1, v8}, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$2$1$listener$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    invoke-static {v9}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v2, v9}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/di/AppModule;->a:Lcom/vuitton/android/presentation/CacheFactory;

    if-eqz v3, :cond_3c

    iget-object v3, v3, Lcom/vuitton/android/presentation/CacheFactory;->b:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    :cond_3c
    if-eqz v7, :cond_3d

    new-instance v3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    invoke-direct {v3, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer;->b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V

    goto :goto_1e

    :cond_3d
    move-object v3, v0

    check-cast v3, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v3, v2}, Landroidx/media3/common/BasePlayer;->R(Landroidx/media3/common/MediaItem;)V

    :goto_1e
    invoke-interface {v0}, Landroidx/media3/common/Player;->f()V

    goto :goto_1f

    :cond_3e
    invoke-interface {v8}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_3f

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v2}, Lkotlinx/coroutines/CompletableDeferred;->g(Ljava/lang/Object;)Z

    :cond_3f
    :goto_1f
    new-instance v2, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$lambda$5$0$$inlined$onDispose$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$lambda$5$0$$inlined$onDispose$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$2$1$listener$1;)V

    return-object v2

    :pswitch_21
    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v0, v5}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;->a:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_22
    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->I2(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryConversationEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitHistoryConversationEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
