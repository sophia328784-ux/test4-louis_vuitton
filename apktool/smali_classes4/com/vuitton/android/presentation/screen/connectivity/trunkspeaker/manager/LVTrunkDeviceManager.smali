.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/app/LPDeviceManagerObserver;
.implements Lcom/linkplay/core/clingx/InitUpnpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u0019\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;",
        "Lcom/linkplay/core/app/LPDeviceManagerObserver;",
        "Lcom/linkplay/core/clingx/InitUpnpListener;",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/core/events/LVEventSender;

.field public final b:Landroid/app/Application;

.field public c:Lcom/linkplay/core/app/LPDeviceManagerParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->a:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final LPDeviceOffline(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->a()V

    return-void
.end method

.method public final LPDeviceOnline(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->a()V

    return-void
.end method

.method public final LPDeviceUpdate(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->a()V

    return-void
.end method

.method public final a()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager$sendEvent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager$sendEvent$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    sget-object v2, Lkotlinx/coroutines/GlobalScope;->b:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v2, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final initFailed()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->a()V

    return-void
.end method

.method public final initSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;->a()V

    return-void
.end method
