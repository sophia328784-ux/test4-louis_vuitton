.class Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->d(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;Z)V

    const-string p1, "LINKPLAY_SDK"

    const-string v0, "LPControlPointSearchTemplate initUpnpSearch On Service Creating  UPNPSearch\u670d\u52a1\u8fde\u63a5\u6210\u529f ..."

    invoke-static {p1, v0}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p2, Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    check-cast p2, Lorg/teleal/cling/android/AndroidUpnpService;

    invoke-static {p1, p2}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->e(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;Lorg/teleal/cling/android/AndroidUpnpService;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-static {p1}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->c(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object p1

    sput-object p1, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    invoke-interface {p1}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-static {p2}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->b(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/teleal/cling/registry/RegistryImpl;->j(Lorg/teleal/cling/registry/RegistryListener;)V

    sget p1, La/a;->a:I

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->a(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lcom/linkplay/core/clingx/InitUpnpListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/linkplay/core/clingx/InitUpnpListener;->initSuccess()V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-static {p1}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->c(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->b(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->b(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/teleal/cling/registry/RegistryImpl;->v(Lorg/teleal/cling/registry/RegistryListener;)V

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;->this$0:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->e(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;Lorg/teleal/cling/android/AndroidUpnpService;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->d(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;Z)V

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->a(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lcom/linkplay/core/clingx/InitUpnpListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/linkplay/core/clingx/InitUpnpListener;->initFailed()V

    :cond_1
    const-string p0, "LINKPLAY_SDK"

    const-string p1, "initUpnpSearch On Service Disconnected UPNPSearch\u670d\u52a1\u65ad\u5f00\u8fde\u63a5\u4e86..."

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
