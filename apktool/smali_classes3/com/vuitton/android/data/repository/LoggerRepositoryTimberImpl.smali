.class public final Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/LoggerRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;",
        "Lcom/vuitton/android/domain/repository/LoggerRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Ldagger/Lazy;",
        "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
        "analyticsWrapperRepository",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Ldagger/Lazy;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
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
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Ldagger/Lazy;

.field public final c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Ldagger/Lazy;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Ldagger/Lazy<",
            "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->b:Ldagger/Lazy;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    new-instance v1, Lk60;

    const/16 v2, 0x9

    invoke-direct {v1, v0, p1, v2}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    new-instance v0, Lcom/vuitton/android/data/repository/CrashReportingTree;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/CrashReportingTree;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    sget-object p1, Ltimber/log/Timber;->b:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    new-array v0, v0, [Ltimber/log/Timber$Tree;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->c:[Ltimber/log/Timber$Tree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p1

    throw p0

    :cond_1
    const-string p1, "Cannot plant Timber into itself."

    invoke-static {p1}, Lmd;->n(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
