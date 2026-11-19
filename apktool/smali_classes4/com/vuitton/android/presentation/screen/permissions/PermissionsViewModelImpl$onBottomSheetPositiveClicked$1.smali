.class final Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$onBottomSheetPositiveClicked$1"
    f = "PermissionsViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->b:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->b:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->b:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    invoke-interface {v2, v3}, Lcom/vuitton/android/domain/repository/ConsentRepository;->a(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;)V

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7, v4}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v3, v2}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->a(Ljava/util/Map;)V

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a(Ljava/util/Map;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$onBottomSheetPositiveClicked$1;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->BACK_IN_STOCK:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    if-ne p0, v1, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    move p0, v5

    :goto_3
    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Ac(Z)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;

    invoke-direct {p0, v5, v4, v3}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowCommunicationBottomSheet;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Bc()V

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->yc()V

    goto :goto_4

    :cond_5
    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->a(ZZ)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowDeviceNotificationsPermissionsBottomSheet;

    invoke-direct {p0, v5, v4, v3}, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$AllowDeviceNotificationsPermissionsBottomSheet;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;->Gb()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
