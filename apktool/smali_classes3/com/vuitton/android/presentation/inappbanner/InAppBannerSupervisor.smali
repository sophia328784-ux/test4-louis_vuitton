.class public final Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;",
        "",
        "Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;",
        "inAppBannerStateHolder",
        "Lcom/vuitton/android/domain/reporter/CrashReporter;",
        "crashReporter",
        "Lcom/vuitton/android/platform/activity/CurrentActivityProvider;",
        "currentActivityProvider",
        "<init>",
        "(Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;Lcom/vuitton/android/domain/reporter/CrashReporter;Lcom/vuitton/android/platform/activity/CurrentActivityProvider;)V",
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
.field public static final e:Ljava/util/Set;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;

.field public final b:Lcom/vuitton/android/domain/reporter/CrashReporter;

.field public final c:Lcom/vuitton/android/platform/activity/CurrentActivityProvider;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;Lcom/vuitton/android/domain/reporter/CrashReporter;Lcom/vuitton/android/platform/activity/CurrentActivityProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->a:Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;

    iput-object p2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->b:Lcom/vuitton/android/domain/reporter/CrashReporter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->c:Lcom/vuitton/android/platform/activity/CurrentActivityProvider;

    return-void
.end method
