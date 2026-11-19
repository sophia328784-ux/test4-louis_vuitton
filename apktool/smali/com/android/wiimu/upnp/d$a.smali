.class Lcom/android/wiimu/upnp/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/upnp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lorg/teleal/cling/model/meta/Device;

.field b:Lb/c;

.field final synthetic c:Lcom/android/wiimu/upnp/d;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/d;Lorg/teleal/cling/model/meta/Device;Lb/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/d$a;->c:Lcom/android/wiimu/upnp/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/wiimu/upnp/d$a;->a:Lorg/teleal/cling/model/meta/Device;

    iput-object p3, p0, Lcom/android/wiimu/upnp/d$a;->b:Lb/c;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/android/wiimu/upnp/d$a;->b:Lb/c;

    iget-object v0, v0, Lb/c;->e:Lb/e;

    iget-object v0, v0, Lb/e;->b:Ljava/lang/String;

    sget v0, La/a;->a:I

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/d$a;->a:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/android/wiimu/upnp/d$a$a;

    invoke-direct {v2, p0}, Lcom/android/wiimu/upnp/d$a$a;-><init>(Lcom/android/wiimu/upnp/d$a;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getControlDeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-direct {p0}, Lcom/android/wiimu/upnp/d$a;->a()V

    return-void
.end method
