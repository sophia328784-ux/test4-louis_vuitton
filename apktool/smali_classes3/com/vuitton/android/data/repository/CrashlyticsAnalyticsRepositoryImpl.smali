.class public final Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AnalyticsRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB;\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0008\u0001\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AnalyticsRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;",
        "Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;",
        "builder",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/domain/repository/ConsentRepository;

.field public final d:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

.field public final e:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
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
            "Lcom/vuitton/android/domain/repository/ConsentRepository;",
            "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder<",
            "Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;",
            ">;",
            "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
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

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->d:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->e:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->b(Z)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->o:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/f;

    const-string v3, "device_language"

    invoke-direct {v2, v0, v3, p1}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->f:Z

    return-void
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->f:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->e:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->d:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    iget-object p1, p1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iget-object p2, p0, Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E/"

    const-string v2, ": "

    invoke-static {v1, p2, v2, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->o:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;

    new-instance v3, Lvq;

    invoke-direct {v3, p1, v0, v1, p2}, Lvq;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object p2, p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->o:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/f;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Ljava/lang/RuntimeException;)V

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean p0, p0, Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;->f:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->b(Z)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V
    .locals 0

    return-void
.end method
