.class Lcom/android/wiimu/service/online_service/util/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/service/online_service/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/wiimu/service/online_service/util/a;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/service/online_service/util/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wiimu/service/online_service/util/a$b;->c:Lcom/android/wiimu/service/online_service/util/a;

    iput-object p2, p0, Lcom/android/wiimu/service/online_service/util/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wiimu/service/online_service/util/a$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->c()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/teleal/cling/UpnpServiceImpl;

    iget-object v0, v0, Lorg/teleal/cling/UpnpServiceImpl;->e:Lorg/teleal/cling/transport/Router;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/wiimu/service/online_service/util/a$b;->c:Lcom/android/wiimu/service/online_service/util/a;

    iget-object v2, p0, Lcom/android/wiimu/service/online_service/util/a$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/wiimu/service/online_service/util/a$b;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/wiimu/service/online_service/util/a;->b(Lcom/android/wiimu/service/online_service/util/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    new-instance v1, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    invoke-direct {v1}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/wiimu/service/online_service/util/a$b;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->b(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/teleal/cling/transport/Router;->b(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
