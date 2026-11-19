.class Lcom/android/wiimu/upnp/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/upnp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/e;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/wiimu/upnp/e;->d(Lcom/android/wiimu/upnp/e;Z)V

    const-string p1, "UPNP-SEARCH"

    const-string v0, "initUpnpSearch On Service Creating  UPNPSearch\u670d\u52a1\u8fde\u63a5\u6210\u529f ..."

    invoke-static {p1, v0}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p2, Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    check-cast p2, Lorg/teleal/cling/android/AndroidUpnpService;

    invoke-static {p1, p2}, Lcom/android/wiimu/upnp/e;->c(Lcom/android/wiimu/upnp/e;Lorg/teleal/cling/android/AndroidUpnpService;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    iget-object p1, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    invoke-static {p1}, Lcom/android/wiimu/upnp/e;->b(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object p1

    sput-object p1, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    invoke-interface {p1}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    invoke-static {p0}, Lcom/android/wiimu/upnp/e;->a(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/teleal/cling/registry/RegistryImpl;->j(Lorg/teleal/cling/registry/RegistryListener;)V

    sget p0, La/a;->a:I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    invoke-static {p1}, Lcom/android/wiimu/upnp/e;->b(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/wiimu/upnp/e;->a(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    invoke-static {v0}, Lcom/android/wiimu/upnp/e;->a(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/teleal/cling/registry/RegistryImpl;->v(Lorg/teleal/cling/registry/RegistryListener;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wiimu/upnp/e$a;->a:Lcom/android/wiimu/upnp/e;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/e;->c(Lcom/android/wiimu/upnp/e;Lorg/teleal/cling/android/AndroidUpnpService;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/e;->d(Lcom/android/wiimu/upnp/e;Z)V

    const-string p0, "UPNP-SEARCH"

    const-string p1, "initUpnpSearch On Service Disconnected UPNPSearch\u670d\u52a1\u65ad\u5f00\u8fde\u63a5\u4e86..."

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
