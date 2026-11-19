.class public Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;
.super Lorg/teleal/cling/protocol/ReceivingAsync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingAsync<",
        "Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_EASY_LINK_OK:Ljava/lang/String; = "easy link successful"

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/UpnpService;",
            "Lorg/teleal/cling/model/message/IncomingDatagramMessage<",
            "Lorg/teleal/cling/model/message/UpnpResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/ReceivingAsync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/UpnpMessage;)V

    return-void
.end method

.method private getBootid(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "Bootid.upnp.org"

    invoke-virtual {p1, p0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getHeaderItemValueByKey(Lorg/teleal/cling/model/message/UpnpHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lorg/teleal/common/http/Headers;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "SSDP"

    return-object p0
.end method

.method private getIP(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;
    .locals 3

    const-string p0, "LOCATION"

    const-string v0, "Location"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private getMediaType(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    if-eqz p1, :cond_1

    const-string v0, "St"

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MediaServer"

    return-object p0

    :cond_0
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "MediaRenderer"

    :cond_1
    return-object p0
.end method

.method private getSecurity(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const-string p0, "Server"

    invoke-virtual {p1, p0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https 3.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https 2.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    const-string p0, "http"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private getServiceName(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-eqz p1, :cond_1

    const-string v0, "Servicename"

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "ServiceName"

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private declared-synchronized matchEasylink(Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/teleal/common/http/Headers;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "easylink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget-object v4, p1, v3

    const-string v5, "easylink"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    const-string v5, "location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v5, "usn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "uuid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse ok all -----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "EASYLINK"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "IP"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "UUID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "easy link successful"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "EASYLINK"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "IP"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UUID"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/teleal/cling/android/AndroidEzlinkHandler;->a()Lorg/teleal/cling/android/AndroidEzlinkHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/teleal/cling/android/AndroidEzlinkHandler;->b(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 11

    const-string v0, "RemoteDeviceIdentity:UDN = "

    const-string v1, "ReceivingSearchResponse: Receive Router Description: "

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->g()Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v3, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-string v4, "UPNP-SEARCH"

    if-nez v3, :cond_2

    const-string p0, "Receiving Search Response getInputMsg getHeaders null"

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v5, "Easylink"

    invoke-virtual {v3, v5}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Receiving Search Response getInputMsg getHeaders contains Easylink"

    invoke-static {v4, v5}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->matchEasylink(Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;)V

    :cond_3
    iget-object v5, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v6, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/message/UpnpHeaders;->j(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-lez v7, :cond_4

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/message/UpnpHeaders;->j(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v5

    aget-object v5, v5, v9

    goto :goto_0

    :cond_4
    move-object v5, v8

    :goto_0
    iget-object v6, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v7, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v6, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->j(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_5

    invoke-virtual {v6, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->j(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v6

    aget-object v6, v6, v9

    goto :goto_1

    :cond_5
    move-object v6, v8

    :goto_1
    if-eqz v5, :cond_13

    iget-object v5, v5, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v5, :cond_13

    if-eqz v6, :cond_13

    iget-object v5, v6, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v5, :cond_13

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->h()Lorg/teleal/cling/model/types/UDN;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v0, "getInputMessage() getRootDeviceUDN() == null"

    invoke-static {v4, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring search response message without UDN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v6, "St"

    invoke-virtual {v3, v6}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3, v6}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    :cond_7
    iget-object v6, v3, Lorg/teleal/common/http/Headers;->b:Ljava/util/HashMap;

    const-string v7, "ST"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3, v7}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_8
    :goto_2
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_b

    sget-object v7, Lorg/teleal/cling/model/types/NotificationSubtype;->GETWAYDEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v7}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lorg/teleal/cling/model/types/NotificationSubtype;->WFADEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v7}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    :try_start_0
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->g()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_a
    :goto_3
    new-instance v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v2, v3, v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object p0

    invoke-interface {p0, v2}, Lorg/teleal/cling/transport/Router;->c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceivingSearchResponse: Receive Router Desc Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->g()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getMediaType(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->c:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getSecurity(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getBootid(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/teleal/cling/protocol/UpnpUDNManager$UpnpUDNInstance;->e:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getServiceName(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "##hexStr##"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linkplay/core/utils/LPBytesUtils;->hexStr2Str(Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    const-string v1, "Device-source"

    invoke-direct {p0, v3, v1}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getHeaderItemValueByKey(Lorg/teleal/cling/model/message/UpnpHeaders;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/protocol/UpnpUDNManager;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v2}, Lorg/teleal/cling/protocol/UpnpUDNManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/protocol/UpnpUDNManager;->a(Ljava/lang/String;)V

    new-instance v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;)V

    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Received device search response: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/teleal/cling/registry/RegistryImpl;->B(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Remote device was already known: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string p0, "RemoteDeviceIdentity update true."

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v3, v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    if-nez v3, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring message without location URL header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceivingSearchResponse getDescriptorURL() == null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v3, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    if-nez v3, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring message without max-age header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceivingSearchResponse rdIdentity.getMaxAgeSeconds() == null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    :try_start_1
    iget-object v2, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/meta/RemoteDevice;-><init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    :try_end_1
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->m()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v2, v3, v0, p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/RemoteDevice;Lorg/teleal/cling/model/message/UpnpHeaders;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception p0

    sget-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Validation errors of device during discovery: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidationException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/model/ValidationException;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v0}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new RemoteDevice ValidationError: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    :goto_6
    return-void

    :cond_13
    sget-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring invalid search response message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method
