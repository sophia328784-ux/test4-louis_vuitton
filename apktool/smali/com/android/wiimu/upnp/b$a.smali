.class Lcom/android/wiimu/upnp/b$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/b;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/b$a;->a:Lcom/android/wiimu/upnp/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wiimu/upnp/b$a;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v0}, Lcom/android/wiimu/upnp/b;->a(Lcom/android/wiimu/upnp/b;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb/c;->c:Ljava/lang/String;

    const-string v1, "master"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/b$a;->a:Lcom/android/wiimu/upnp/b;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/wiimu/upnp/b;->d()V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v0

    iget-object v0, v0, Lb/c;->c:Ljava/lang/String;

    const-string v1, "slave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/utils/LPWiFiResultUtils;->isWiFiConnectAP()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wiimu/upnp/b$a;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v0}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v0

    iget-object v0, v0, Lb/c;->d:Ljava/lang/String;

    const-string v1, "mask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wiimu/upnp/b$a;->a:Lcom/android/wiimu/upnp/b;

    invoke-virtual {p0}, Lcom/android/wiimu/upnp/b;->d()V

    :cond_1
    return-void
.end method
