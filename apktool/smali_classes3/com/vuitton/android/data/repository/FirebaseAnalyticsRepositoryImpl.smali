.class public final Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AnalyticsRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB=\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008\u0012\u000e\u0008\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AnalyticsRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;",
        "userPropertyBuilder",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;",
        "Landroid/os/Bundle;",
        "hitBuilder",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;)V",
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
.field public static final synthetic g:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/domain/repository/ConsentRepository;

.field public final d:Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;

.field public final e:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;)V
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
            "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;",
            "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder<",
            "Landroid/os/Bundle;",
            ">;)V"
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

    iput-object p1, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->d:Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->e:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()V

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->g(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lp3;

    invoke-direct {v3, p0, v0, v1}, Lp3;-><init>(Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->n()Z

    move-result v1

    iget-object p1, p1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzez;->v(Ljava/lang/Boolean;)V

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "allow_personalized_ads"

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzez;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->f:Z

    return-void
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->f:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->e:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

    invoke-interface {v0, p1, p2}, Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit;->getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/android/data/analytics/HitTypeAnalyticMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    iget-object v2, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/zzez;->l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/zzez;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->v(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->d:Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;

    invoke-interface {v0, p1}, Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;->a(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)Lkotlin/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    iget-object v0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {v1, v0}, Lkotlin/text/StringsKt;->V(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x24

    invoke-static {v2, p1}, Lkotlin/text/StringsKt;->V(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzez;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method
