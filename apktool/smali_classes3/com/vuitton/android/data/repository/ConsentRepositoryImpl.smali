.class public final Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/ConsentRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$Companion;,
        Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB3\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
        "inAppDispatchRepository",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/content/SharedPreferences;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
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


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

.field public final c:Lkotlinx/serialization/json/Json;

.field public final d:Lcom/vuitton/foundation/logger/Logger;

.field public final e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->c:Lkotlinx/serialization/json/Json;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->p()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->c:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1, p1, v0}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_consent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->r(J)V

    return-void
.end method

.method public final b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$setPiplCbdtAgreement$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$setPiplCbdtAgreement$2;-><init>(Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final c(ZZ)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/analytics/AnalyticsKt;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/analytics/ConsentBuilder;

    invoke-direct {v0}, Lcom/google/firebase/analytics/ConsentBuilder;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->DENIED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    :goto_0
    iput-object p1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->DENIED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    :goto_1
    iput-object p1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    if-eqz p2, :cond_2

    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->DENIED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    :goto_2
    iput-object p1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    if-eqz p2, :cond_3

    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->DENIED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    :goto_3
    iput-object p1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    invoke-virtual {v0}, Lcom/google/firebase/analytics/ConsentBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result p0

    return p0

    :cond_2
    return v2

    :cond_3
    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->r(J)V

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->i(Ljava/util/List;)V

    const/4 v0, 0x0

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 11

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->q()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->i(Ljava/util/List;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->p()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->k()Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-ne p0, v2, :cond_2

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {p0, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    invoke-direct {v7, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    invoke-direct {v8, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    invoke-direct {v9, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    invoke-direct {v10, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-array v1, v1, [Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    aput-object p0, v1, v0

    aput-object v7, v1, v5

    aput-object v8, v1, v4

    aput-object v9, v1, v3

    aput-object v10, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {p0, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    invoke-direct {v8, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    invoke-direct {v10, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-array v1, v1, [Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    aput-object p0, v1, v0

    aput-object v6, v1, v5

    aput-object v8, v1, v4

    aput-object v9, v1, v3

    aput-object v10, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {p0, v6}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    invoke-direct {v8, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    invoke-direct {v10, v7}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    new-array v1, v1, [Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    aput-object p0, v1, v0

    aput-object v6, v1, v5

    aput-object v8, v1, v4

    aput-object v9, v1, v3

    aput-object v10, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->p()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final h()Z
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result p0

    return p0

    :cond_2
    return v2

    :cond_3
    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public final i(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->c:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1, v0, p1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_consent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->r(J)V

    return-void
.end method

.method public final j()Z
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result p0

    return p0

    :cond_2
    return v2

    :cond_3
    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public final k()Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->CCPA:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->PIPL:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->NONE:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->GDPR:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    return-object p0
.end method

.method public final l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;-><init>(Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$2;-><init>(Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$getPiplCbdtAgreement$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final m()J
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREF_CHINESE_GDPR_CONSENT_DATE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "PREF_GDPR_CONSENT_DATE"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "PREF_CCPA_CONSENT_DATE"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "key_consent_date"

    invoke-interface {v0, p0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->k()Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    move-result-object v2

    sget-object v4, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-wide v7

    :cond_3
    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_1

    :cond_4
    invoke-interface {v0, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_1

    :cond_5
    invoke-interface {v0, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v7, v8}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->r(J)V

    return-wide v7
.end method

.method public final n()Z
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result p0

    return p0

    :cond_2
    return v2

    :cond_3
    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public final o()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/analytics/AnalyticsKt;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/analytics/ConsentBuilder;

    invoke-direct {v0}, Lcom/google/firebase/analytics/ConsentBuilder;-><init>()V

    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    iput-object v1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    iput-object v1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    iput-object v1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    iput-object v1, v0, Lcom/google/firebase/analytics/ConsentBuilder;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    invoke-virtual {v0}, Lcom/google/firebase/analytics/ConsentBuilder;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->q()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->i(Ljava/util/List;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_consent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->c:Lkotlinx/serialization/json/Json;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ArrayListSerializer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_3

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "Consent repository"

    const-string v1, "Error while parsing consents"

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, v0, v1, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_2
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_3
    throw v0

    :cond_4
    :goto_3
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    const-string v2, "PREF_CONSENT_ANALYTICS_TRACKERS"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "PREF_CONSENT_CUSTOMISATION_TRACKERS"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "PREF_CONSENT_SOCIAL_TRACKERS"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "PREF_CONSENT_LUCIELABS_TRACKERS"

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "PREF_CONSENT_FUNCTIONAL_TRACKERS"

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "PREF_HAS_CHOSEN_CONSENT_CHAT"

    invoke-interface {v1, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    if-nez v9, :cond_1

    if-nez v11, :cond_1

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object v0

    :cond_1
    :goto_0
    const/4 v15, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v5, :cond_3

    invoke-interface {v1, v4, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v7, :cond_4

    invoke-interface {v1, v6, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v9, :cond_5

    invoke-interface {v1, v8, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v11, :cond_6

    invoke-interface {v1, v10, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    if-eqz v13, :cond_7

    invoke-interface {v1, v12, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_6
    const/16 v16, 0x0

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    goto :goto_6

    :goto_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->k()Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    move-result-object v0

    sget-object v17, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v17, v0

    move/from16 v17, v15

    const/4 v15, 0x2

    move-object/from16 v20, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    if-eq v0, v15, :cond_14

    move/from16 v21, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    goto/16 :goto_18

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_9
    if-eqz v11, :cond_a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_8

    :cond_a
    if-eqz v11, :cond_b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_8

    :cond_b
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_8
    if-eqz v3, :cond_c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_9

    :cond_c
    if-eqz v3, :cond_d

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_9

    :cond_d
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_9
    if-eqz v5, :cond_e

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_a

    :cond_e
    if-eqz v5, :cond_f

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_a

    :cond_f
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_a
    if-eqz v9, :cond_10

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_b

    :cond_10
    if-eqz v9, :cond_11

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_b

    :cond_11
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_b
    if-eqz v13, :cond_12

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_c
    const/4 v5, 0x5

    goto :goto_d

    :cond_12
    if-eqz v13, :cond_13

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_c

    :cond_13
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_c

    :goto_d
    new-array v5, v5, [Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    aput-object v0, v5, v17

    aput-object v1, v5, v21

    aput-object v2, v5, v15

    const/16 v19, 0x3

    aput-object v3, v5, v19

    const/16 v18, 0x4

    aput-object v4, v5, v18

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_18

    :cond_14
    move/from16 v21, v1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    if-eqz v3, :cond_15

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_e

    :cond_15
    if-eqz v3, :cond_16

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_e

    :cond_16
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_e
    if-eqz v5, :cond_17

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_f

    :cond_17
    if-eqz v5, :cond_18

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_f

    :cond_18
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_f
    if-eqz v7, :cond_19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_10

    :cond_19
    if-eqz v7, :cond_1a

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_10

    :cond_1a
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_10
    if-eqz v13, :cond_1b

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_11
    const/4 v5, 0x5

    goto :goto_12

    :cond_1b
    if-eqz v13, :cond_1c

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_11

    :cond_1c
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_11

    :goto_12
    new-array v5, v5, [Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    aput-object v0, v5, v17

    aput-object v1, v5, v21

    aput-object v2, v5, v15

    const/16 v19, 0x3

    aput-object v3, v5, v19

    const/16 v18, 0x4

    aput-object v4, v5, v18

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_18

    :cond_1d
    move/from16 v21, v1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    if-eqz v3, :cond_1e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_13

    :cond_1e
    if-eqz v3, :cond_1f

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_13

    :cond_1f
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_13
    if-eqz v5, :cond_20

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_14

    :cond_20
    if-eqz v5, :cond_21

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_14

    :cond_21
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_14
    if-eqz v7, :cond_22

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_15

    :cond_22
    if-eqz v7, :cond_23

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_15

    :cond_23
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_15
    if-eqz v13, :cond_24

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    :goto_16
    const/4 v5, 0x5

    goto :goto_17

    :cond_24
    if-eqz v13, :cond_25

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_16

    :cond_25
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    goto :goto_16

    :goto_17
    new-array v5, v5, [Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    aput-object v0, v5, v17

    aput-object v1, v5, v21

    aput-object v2, v5, v15

    const/16 v19, 0x3

    aput-object v3, v5, v19

    const/16 v18, 0x4

    aput-object v4, v5, v18

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_18
    const-string v5, "PREF_CONSENT_FUNCTIONAL_TRACKERS"

    const-string v6, "PREF_HAS_CHOSEN_CONSENT_CHAT"

    const-string v1, "PREF_CONSENT_ANALYTICS_TRACKERS"

    const-string v2, "PREF_CONSENT_CUSTOMISATION_TRACKERS"

    const-string v3, "PREF_CONSENT_SOCIAL_TRACKERS"

    const-string v4, "PREF_CONSENT_LUCIELABS_TRACKERS"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    :cond_26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v14
.end method

.method public final r(J)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConsentRepositoryImpl;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_consent_date"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
