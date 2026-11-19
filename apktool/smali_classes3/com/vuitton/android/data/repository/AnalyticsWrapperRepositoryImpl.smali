.class public final Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000fBK\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "lvLogger",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/repository/AnalyticsRepository;",
        "firebaseAnalyticsRepository",
        "sensorDataAnalyticsRepository",
        "crashlyticsAnalyticsRepository",
        "loggerAnalyticsRepository",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
        "Companion",
        "data"
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
.field public static final synthetic i:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

.field public final d:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

.field public final e:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

.field public final f:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

.field public final g:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public h:Lkotlin/collections/builders/ListBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/repository/AnalyticsRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->e:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->f:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->g:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-interface {v0, p1, p2}, Lcom/vuitton/android/domain/repository/AnalyticsRepository;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "repositories"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->g:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/AnalyticsRepository;->c()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "repositories"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->g:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/repository/AnalyticsRepository;->d(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "repositories"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->g:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;ZZ)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-virtual {p2, p3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-virtual {p2, p3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p3, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->e:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-virtual {p2, p3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->f:Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-virtual {p2, p3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    const/4 p3, 0x0

    const-string p4, "repositories"

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/repository/AnalyticsRepository;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    if-eqz v0, :cond_4

    new-instance v4, Lp;

    const/16 p1, 0x17

    invoke-direct {v4, p1}, Lp;-><init>(I)V

    const/16 v5, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_4
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p3

    :cond_5
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p3
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->h:Lkotlin/collections/builders/ListBuilder;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    instance-of v3, v3, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/vuitton/android/domain/repository/AnalyticsRepository;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl$getAppInstanceId$2$2$1;

    invoke-direct {p1, v0}, Lcom/vuitton/android/data/repository/AnalyticsWrapperRepositoryImpl$getAppInstanceId$2$2$1;-><init>(Lkotlin/coroutines/SafeContinuation;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0, v1}, Lkotlin/coroutines/SafeContinuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p0, "repositories"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0, v1}, Lkotlin/coroutines/SafeContinuation;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method
