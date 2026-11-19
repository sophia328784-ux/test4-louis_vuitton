.class public final Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;",
        "getPreferencesUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;",
        "isSystemContrastEnabledUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;",
        "savePreferencesUseCase",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;)V",
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

.field public final c:Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/StateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final k:Lkotlinx/coroutines/flow/StateFlow;

.field public final l:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;->a:Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1;

    move-object/from16 v3, p3

    invoke-direct {v2, v1, v3}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v4, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-static {v8, v8, v6, v7}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->j:Lkotlinx/coroutines/flow/SharedFlowImpl;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v9, 0x2

    aput-object v2, v7, v9

    const/4 v9, 0x3

    aput-object v1, v7, v9

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v7

    new-instance v9, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesViewState;

    const/16 v14, 0xf

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesViewState;-><init>(ZZZLcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v7, v3, v9}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->k:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;

    invoke-interface {v0, v8}, Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;->c(Z)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v5, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Screen;->a:Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Screen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "accessibility_menu"

    const-string v4, "accessibility_menu"

    const-string v5, "accessibility"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Close;->a:Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Close;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "accessibility_menu"

    const-string v4, "close"

    const-string v5, "MyLV"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;->a:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "accessibility_menu"

    const-string v4, "modify_simplify_navigation"

    const-string v5, "MyLV"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;->a:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "accessibility_menu"

    const-string v4, "modify_disable_autoplay"

    const-string v5, "MyLV"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;->a:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "accessibility_menu"

    const-string v4, "modify_enhanced_contrast"

    const-string v5, "MyLV"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;

    iget-boolean v2, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;->b:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;->c:Z

    const-string v4, "|enhancedContrast:"

    const-string v5, "|disableAutoplay:"

    const-string v6, "simplifyNavigation:"

    invoke-static {v6, v4, v5, v2, v3}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "accessibility_menu"

    const-string v4, "save"

    const-string v5, "MyLV"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$OpenStatement;->a:Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$OpenStatement;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string p1, "Accessibility-Statement"

    invoke-static {p1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "accessibility_menu"

    const-string v3, "open_statement"

    const-string v4, "MyLV"

    const-string v5, "click"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final K1(Z)V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$EnhancedContrastChanged;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->k:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final d9()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;->a:Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final i7()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final o9(Z)V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$SimplifyNavigationChanged;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final s1(Z)V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$DisableAutoplayChanged;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final s4()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v0, v2, v4, v6}, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Save;-><init>(ZZZ)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;->I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$saveValues$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl$saveValues$1;-><init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
