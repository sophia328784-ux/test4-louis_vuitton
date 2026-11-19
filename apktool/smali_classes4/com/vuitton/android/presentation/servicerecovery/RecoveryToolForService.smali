.class public final Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;
.super Lcom/vuitton/android/presentation/servicerecovery/Hilt_RecoveryToolForService;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
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
.field public static final g:Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;


# instance fields
.field public e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->g:Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vuitton/android/presentation/servicerecovery/Hilt_RecoveryToolForService;-><init>()V

    new-instance v0, Lxn0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->f:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p3, "EXTRA_IS_APP_COMING_FROM_BACKGROUND"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$onStartCommand$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$onStartCommand$1;-><init>(Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const/4 p0, 0x2

    return p0
.end method
