.class public final Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\tB!\u0008\u0007\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;",
        "",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "schedulersProvider",
        "<init>",
        "(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
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
.field public final a:Ldagger/Lazy;

.field public final b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;->a:Ldagger/Lazy;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource$getOrCreate$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource$getOrCreate$2;-><init>(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
