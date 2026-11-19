.class public final Lcom/vuitton/android/presentation/push/NotificationsSDKManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/push/NotificationsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/push/NotificationsSDKManager$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0016BS\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/push/NotificationsSDKManager;",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "applicationContext",
        "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;",
        "notificationsPreferencesTracker",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;",
        "getConsentForCustomizationUseCase",
        "Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;",
        "notificationsPreferencesRepository",
        "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;",
        "userPreferencesRepository",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/core/events/LVEventSender;)V",
        "Companion",
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


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

.field public final g:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

.field public final h:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

.field public final i:Lcom/vuitton/android/core/events/LVEventSender;

.field public final j:Lkotlinx/coroutines/internal/ContextScope;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lcom/batch/android/BatchInboxFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "NotificationsSDKManager"

    sput-object v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/core/events/LVEventSender;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->g:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    iput-object p8, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->h:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p9, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->i:Lcom/vuitton/android/core/events/LVEventSender;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->j:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->l:Z

    return p0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/account/notifications/ClearNotificationsPreferencesUseCase;

    iget-object v1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->g:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/account/notifications/ClearNotificationsPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/Batch;->optOutAndWipeData(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/account/notifications/ClearNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->d()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/batch/android/Batch$Profile;->editor()Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    const-string v0, "thematic_optins"

    invoke-virtual {p0, v0}, Lcom/batch/android/BatchProfileAttributeEditor;->removeAttribute(Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    invoke-virtual {p0}, Lcom/batch/android/BatchProfileAttributeEditor;->save()V

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/Batch;->isOptedOut(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;

    iget v1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;-><init>(Lcom/vuitton/android/presentation/push/NotificationsSDKManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->g:I

    const/4 v3, 0x0

    const-string v4, "inboxFetcher"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->d:I

    iget v7, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->c:I

    iget v8, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->b:I

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->d:I

    iget v7, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->c:I

    iget v8, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->b:I

    iput v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->c:I

    iput v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->d:I

    iput v6, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->g:I

    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v7

    invoke-direct {p1, v7, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v7, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    if-eqz v7, :cond_8

    new-instance v8, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNewNotificationPage$2$1;

    invoke-direct {v8, p1}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNewNotificationPage$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v7, v8}, Lcom/batch/android/BatchInboxFetcher;->fetchNewNotifications(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move v7, v2

    move v8, v7

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_2
    if-nez p1, :cond_7

    iput v8, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->b:I

    iput v7, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->c:I

    iput v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->d:I

    iput v5, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNotifications$1;->g:I

    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v9

    invoke-direct {p1, v9, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v9, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    if-eqz v9, :cond_6

    new-instance v10, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNextNotificationPage$2$1;

    invoke-direct {v10, p1}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$fetchNextNotificationPage$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v9, v10}, Lcom/batch/android/BatchInboxFetcher;->fetchNextPage(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw p0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/batch/android/BatchInboxFetcher;->getFetchedNotifications()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/BatchInboxNotificationContent;

    invoke-virtual {v1}, Lcom/batch/android/BatchInboxNotificationContent;->isUnread()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->m:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->n:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    const-string p0, "inboxFetcher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/batch/android/Batch;->isOptedOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->h:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/Batch$Profile;->identify(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->r()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/batch/android/Batch;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "Batch SDK not yet initialized. You should call "

    const-string p2, "::init first"

    sget-object v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->p:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, v0, p1, p2}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "inboxFetcher"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/batch/android/BatchInboxFetcher;->getFetchedNotifications()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/batch/android/BatchInboxNotificationContent;

    invoke-virtual {v4}, Lcom/batch/android/BatchInboxNotificationContent;->getNotificationIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/batch/android/BatchInboxNotificationContent;

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3}, Lcom/batch/android/BatchInboxFetcher;->markAsDeleted(Lcom/batch/android/BatchInboxNotificationContent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/push/NotificationException$NotificationNotFoundException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/push/NotificationException$NotificationNotFoundException;-><init>()V

    throw p0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_2
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    throw p0
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;

    iget v1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;-><init>(Lcom/vuitton/android/presentation/push/NotificationsSDKManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "inboxFetcher"

    if-eqz p2, :cond_8

    :try_start_2
    invoke-virtual {p2}, Lcom/batch/android/BatchInboxFetcher;->getFetchedNotifications()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/batch/android/BatchInboxNotificationContent;

    invoke-virtual {v6}, Lcom/batch/android/BatchInboxNotificationContent;->getNotificationIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    check-cast v5, Lcom/batch/android/BatchInboxNotificationContent;

    if-eqz v5, :cond_7

    iget-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v5}, Lcom/batch/android/BatchInboxFetcher;->markAsRead(Lcom/batch/android/BatchInboxNotificationContent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->i:Lcom/vuitton/android/core/events/LVEventSender;

    sget-object p1, Lcom/vuitton/android/core/events/AppEvent$RefreshUnreadNotifications;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshUnreadNotifications;

    iput v3, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setNotificationAsRead$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_7
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/push/NotificationException$NotificationNotFoundException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/push/NotificationException$NotificationNotFoundException;-><init>()V

    throw p0

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw p0
.end method

.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/batch/android/BatchActivityLifecycleHelper;

    invoke-direct {v2}, Lcom/batch/android/BatchActivityLifecycleHelper;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const v2, 0x7f080176

    invoke-static {v2}, Lcom/batch/android/Batch$Push;->setSmallIconResourceId(I)V

    new-instance v2, Lcom/vuitton/android/presentation/push/NotificationInterceptor;

    iget-object v3, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/push/NotificationInterceptor;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    invoke-static {v2}, Lcom/batch/android/Batch$Push;->setNotificationInterceptor(Lcom/batch/android/BatchNotificationInterceptor;)V

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "font/louisvuitton_light.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "font/louisvuitton_medium.otf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/batch/android/Batch$Messaging;->setTypefaceOverride(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->optIn(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/Batch$Messaging;->setDoNotDisturbEnabled(Z)V

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->k:Z

    return-void

    :cond_0
    const-string p0, "Context is not an Application"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;

    iget v1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;-><init>(Lcom/vuitton/android/presentation/push/NotificationsSDKManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->d:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->m:Z

    iget-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->n:Z

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->INBOX:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput v7, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->d:I

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v8, p1, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->l:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->m:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->n:Z

    if-eqz p1, :cond_a

    iput v5, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, v0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$initInboxFetcherIfNeeded$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_a

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->l:Ljava/lang/String;

    if-nez v0, :cond_8

    move-object v0, v6

    :cond_8
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->m:Ljava/lang/String;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move-object v6, p1

    :goto_5
    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    invoke-static {v3, v0, v6}, Lcom/batch/android/Batch$Inbox;->getFetcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchInboxFetcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/batch/android/BatchInboxFetcher;->setMaxPageSize(I)V

    iput-boolean v7, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->l:Z

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final k(ZLcom/vuitton/android/presentation/screen/main/MainActivity;)V
    .locals 0

    invoke-static {p1}, Lcom/batch/android/Batch$Messaging;->setDoNotDisturbEnabled(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/batch/android/Batch$Messaging;->popPendingMessage()Lcom/batch/android/BatchMessage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lcom/batch/android/Batch$Messaging;->show(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/batch/android/Batch$Profile;->identify(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->l:Z

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/batch/android/Batch$Profile;->identify(Ljava/lang/String;)V

    new-instance p1, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setBatchIdentifier$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager$setBatchIdentifier$1;-><init>(Lcom/vuitton/android/presentation/push/NotificationsSDKManager;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->j:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->m:Z

    iget-object v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->n:Z

    return-void
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->o:Lcom/batch/android/BatchInboxFetcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/BatchInboxFetcher;->getFetchedNotifications()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "inboxFetcher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(Landroid/app/Activity;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->k:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->init()V

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/batch/android/Batch;->optIn(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->r()V

    return-void

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->b()V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->k:Z

    return p0
.end method

.method public final r()V
    .locals 6

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object v1, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->g:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsInitialDefaultPreferencesUseCase;

    invoke-direct {v2, v1}, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsInitialDefaultPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/push/NotificationsSDKManager;->c:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4, v5}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsInitialDefaultPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {v1, v0}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/batch/android/Batch$Profile;->editor()Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p0

    const-string v0, "brand_communications"

    const-string v1, "thematic_optins"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/BatchProfileAttributeEditor;->addToArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    const-string v0, "product_oriented_communication"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/BatchProfileAttributeEditor;->addToArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    const-string v0, "notify_me"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/BatchProfileAttributeEditor;->addToArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    invoke-virtual {p0}, Lcom/batch/android/BatchProfileAttributeEditor;->save()V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;->a(Ljava/util/Map;)V

    return-void
.end method
