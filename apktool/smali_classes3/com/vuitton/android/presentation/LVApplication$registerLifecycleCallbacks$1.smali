.class public final Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
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
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lcom/vuitton/android/presentation/LVApplication;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/LVApplication;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p1, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;->c:Lcom/vuitton/android/presentation/LVApplication;

    return-void
.end method


# virtual methods
.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    sget-object p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->i:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;->c:Lcom/vuitton/android/presentation/LVApplication;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
