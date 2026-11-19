.class public final Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB;\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0008\u0001\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "context",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Ldagger/Lazy;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/ConsentRepository;)V",
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
.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Ldagger/Lazy;

.field public final d:Lkotlinx/serialization/json/Json;

.field public final e:Lcom/vuitton/android/domain/repository/ConsentRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "NotificationsPreferencesRepositoryImpl"

    sput-object v0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Ldagger/Lazy;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/ConsentRepository;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lkotlinx/serialization/json/Json;",
            "Lcom/vuitton/android/domain/repository/ConsentRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->c:Ldagger/Lazy;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->d:Lkotlinx/serialization/json/Json;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->e:Lcom/vuitton/android/domain/repository/ConsentRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->d:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->Companion:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->c:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_preferences"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to serialize notification preferences: "

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->f:Ljava/lang/String;

    invoke-static {v0, p1, p0, v2, v1}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->e:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->j()Z

    move-result v0

    new-instance v1, Landroidx/core/app/NotificationManagerCompat;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->c()Ljava/util/Map;

    move-result-object p0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->BRAND_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->PRODUCT_ORIENTED_COMMUNICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    filled-new-array {v2, v3, v4}, [Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;->NO_ACTION_REQUIRED:Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v4, :cond_4

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;->PREFERENCE_CENTER:Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v4, :cond_5

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;->SYSTEM_NOTIFICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;->PREFERENCE_CENTER_WITH_NOTIFICATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    return-object p0

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v4, :cond_7

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;->PERSONALIZATION:Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    return-object p0

    :cond_7
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;->EVERYTHING:Lcom/vuitton/foundation/model/domain/model/account/notifications/Contactability;

    return-object p0
.end method

.method public final c()Ljava/util/Map;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->d:Lkotlinx/serialization/json/Json;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->c:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v3, "notifications_preferences"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_c

    :try_start_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->Companion:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;

    invoke-virtual {v4}, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v0, v3, v2}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    new-instance v4, Lkotlin/Result;

    invoke-direct {v4, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    instance-of v4, v3, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_b

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v4, v3

    :goto_2
    check-cast v4, Lkotlin/Result;

    iget-object v3, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-eqz v4, :cond_2

    move-object v3, v1

    :cond_2
    check-cast v3, Ljava/util/Map;
    :try_end_2
    .catch Lkotlinx/serialization/SerializationException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_a

    :try_start_3
    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->Companion:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;

    invoke-virtual {v4}, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v0, v3, v2}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_9

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_5
    check-cast v2, Lkotlin/Result;

    iget-object v0, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_6
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    move-object v3, v2

    goto :goto_8

    :cond_8
    move-object v3, v1

    goto :goto_8

    :cond_9
    throw v0

    :cond_a
    :goto_8
    if-nez v3, :cond_d

    goto :goto_9

    :cond_b
    throw v3

    :cond_c
    :goto_9
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3
    :try_end_4
    .catch Lkotlinx/serialization/SerializationException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :goto_a
    sget-object v2, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, v2, v0, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    :cond_d
    :goto_b
    return-object v3
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/NotificationsPreferencesRepositoryImpl;->c:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "notifications_preferences"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
