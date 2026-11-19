.class Lcom/android/wiimu/service/online_service/util/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/service/online_service/util/a;->b(Lh/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh/a;

.field final synthetic b:Lcom/android/wiimu/service/online_service/util/a;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/service/online_service/util/a;Lh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wiimu/service/online_service/util/a$a;->b:Lcom/android/wiimu/service/online_service/util/a;

    iput-object p2, p0, Lcom/android/wiimu/service/online_service/util/a$a;->a:Lh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    const-string v1, "LINKPLAY_SDK"

    if-nez v0, :cond_0

    const-string p0, "OnlineServiceInfoProcess upnpservice is Null return"

    invoke-static {v1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->c()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "OnlineServiceInfoProcess getUpnpService is Null return"

    invoke-static {v1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast v0, Lorg/teleal/cling/UpnpServiceImpl;

    iget-object v0, v0, Lorg/teleal/cling/UpnpServiceImpl;->e:Lorg/teleal/cling/transport/Router;

    if-nez v0, :cond_2

    const-string p0, "OnlineServiceInfoProcess getRouter is Null return"

    invoke-static {v1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/wiimu/service/online_service/util/a$a;->b:Lcom/android/wiimu/service/online_service/util/a;

    iget-object v3, p0, Lcom/android/wiimu/service/online_service/util/a$a;->a:Lh/a;

    invoke-static {v2, v3}, Lcom/android/wiimu/service/online_service/util/a;->a(Lcom/android/wiimu/service/online_service/util/a;Lh/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    invoke-direct {v3, v2, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    new-instance v2, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    invoke-direct {v2}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/wiimu/service/online_service/util/a$a;->a:Lh/a;

    iget-object p0, p0, Lh/a;->i:Lh/b;

    iget-object p0, p0, Lh/b;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->b(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/teleal/cling/transport/Router;->b(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnlineServiceInfoProcess getRouter AssertionError:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnlineServiceInfoProcess getRouter Exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
