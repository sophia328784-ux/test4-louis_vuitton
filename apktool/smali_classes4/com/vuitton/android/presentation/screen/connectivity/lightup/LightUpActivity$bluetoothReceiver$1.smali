.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1",
        "Landroid/content/BroadcastReceiver;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ToastKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    :cond_0
    return-void
.end method
