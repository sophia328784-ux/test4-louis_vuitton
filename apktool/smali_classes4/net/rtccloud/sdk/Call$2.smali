.class Lnet/rtccloud/sdk/Call$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/Call;->registerConnectivityReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private lastType:I

.field final synthetic this$0:Lnet/rtccloud/sdk/Call;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Call$2;->this$0:Lnet/rtccloud/sdk/Call;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Call$2;->getCurrentType()I

    move-result p1

    iput p1, p0, Lnet/rtccloud/sdk/Call$2;->lastType:I

    return-void
.end method

.method private getCurrentType()I
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$2;->this$0:Lnet/rtccloud/sdk/Call;

    invoke-static {p0}, Lnet/rtccloud/sdk/Call;->b(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/rtccloud/sdk/Call$2;->this$0:Lnet/rtccloud/sdk/Call;

    invoke-static {p2}, Lnet/rtccloud/sdk/Call;->a(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    iput p1, p0, Lnet/rtccloud/sdk/Call$2;->lastType:I

    :cond_1
    :goto_0
    return-void
.end method
