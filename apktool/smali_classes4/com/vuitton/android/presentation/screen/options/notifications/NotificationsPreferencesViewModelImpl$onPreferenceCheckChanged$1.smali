.class final Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;
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
    c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1"
    f = "NotificationsPreferencesViewModelImpl.kt"
    l = {
        0x98
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/util/LinkedHashMap;

.field public c:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

.field public d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

.field public e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

.field public f:Z

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

.field public final synthetic i:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->i:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->i:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->j:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->g:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->f:Z

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->c:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->i:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    if-eqz v3, :cond_5

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->j:Z

    if-ne v6, v5, :cond_4

    if-eqz v7, :cond_4

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->b:Ljava/util/LinkedHashMap;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->c:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    iput-boolean v7, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->f:Z

    iput v4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1;->g:I

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    move-object v5, v0

    move v2, v7

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v5, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$EnableBackInStock;->a:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel$EnableBackInStock;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationPreferencesTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_3
    move-object p1, p0

    move v7, v2

    :cond_4
    iget p0, v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->a:I

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->b:Ljava/lang/Integer;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->d:Z

    new-instance v5, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    invoke-direct {v5, p0, v2, v7, v3}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;-><init>(ILjava/lang/Integer;ZZ)V

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    if-eqz v0, :cond_6

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;->c:Z

    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
