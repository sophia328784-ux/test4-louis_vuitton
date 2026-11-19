.class public Lcom/android/wiimu/upnp/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuPlayQueue;


# static fields
.field private static final a:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/wiimu/upnp/impl/d;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/impl/d;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/teleal/cling/model/ContentItem;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/teleal/cling/model/ContentItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/ContentItem;

    iget-object v2, v1, Lorg/teleal/cling/model/ContentItem;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/teleal/cling/model/ContentItem;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/teleal/cling/model/ContentItem;->a:Lorg/teleal/cling/support/model/DIDLObject;

    check-cast v2, Lorg/teleal/cling/support/model/container/Container;

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/linkplay/core/nas/DIDLContentScanner;->isAudio(Lorg/teleal/cling/support/model/container/Container;)Z

    move-result v3

    invoke-static {v2}, Lcom/linkplay/core/nas/DIDLContentScanner;->isImage(Lorg/teleal/cling/support/model/container/Container;)Z

    move-result v4

    invoke-static {v2}, Lcom/linkplay/core/nas/DIDLContentScanner;->isVedio(Lorg/teleal/cling/support/model/container/Container;)Z

    move-result v2

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v4, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    return-object p0
.end method

.method private a(Lorg/teleal/cling/model/meta/Service;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1

    .line 87
    new-instance p0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 88
    const-string v0, "0"

    .line 89
    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p1, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    if-nez p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content Directory on "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public appendTracksInQueue(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p3}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 20
    :cond_1
    const-string p0, "appendTracksInQueue"

    const-string p1, "direction"

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public appendTracksInQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$k;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$k;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public appendTracksInQueueEx(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$u;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$u;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;IILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public backupQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$v;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$v;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public browseNAS(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/nas/LPMediaServerPlayItem;IILcom/linkplay/core/nas/LPMediaServerResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->b(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string p1, "browse nas service is Error"

    if-nez v2, :cond_1

    if-eqz p5, :cond_4

    :try_start_1
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/linkplay/core/nas/LPMediaServerResultListener;->onFailed(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v6, p5

    goto :goto_3

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/wiimu/upnp/impl/d;->a(Lorg/teleal/cling/model/meta/Service;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lcom/linkplay/core/nas/LPMediaServerPlayItem;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :goto_1
    if-nez v5, :cond_3

    if-eqz p5, :cond_4

    :try_start_3
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/linkplay/core/nas/LPMediaServerResultListener;->onFailed(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_3
    :try_start_4
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$t;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    mul-int v3, p3, p4

    move-object v1, p0

    move v4, p4

    move-object v6, p5

    :try_start_5
    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$t;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;IILorg/teleal/cling/support/model/container/Container;Lcom/linkplay/core/nas/LPMediaServerResultListener;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, p5

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v6, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "browse nas Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {v6, p0}, Lcom/linkplay/core/nas/LPMediaServerResultListener;->onFailed(Ljava/lang/Exception;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public browseQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$w;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$w;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public browseQueueUSBDisk(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    const-string p0, "getUserLogout service is Error"

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$r;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/d$r;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "browse queue usbdisk is Error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public createQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$x;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$x;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public deleteQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$y;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$y;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getKeyMapping(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$z;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/d$z;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getQueueIndex(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    const-string p0, "getUserLogout service is Error"

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$s;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wiimu/upnp/impl/d$s;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "get queue index is Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getQueueLoopMode(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$a0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/d$a0;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getQueueOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p6}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$j;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/wiimu/upnp/impl/d$j;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getUserFavorites(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_1

    if-eqz p5, :cond_2

    :try_start_1
    const-string p0, "getUserLogout service is Error"

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v6, p5

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$q;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_3
    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$q;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, p5

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v6, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getUserLogin service is Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {v6, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wiimu/upnp/impl/d$l;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    .line 25
    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$n;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wiimu/upnp/impl/d$n;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    .line 28
    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;ZLcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$m;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wiimu/upnp/impl/d$m;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;ZLcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getUserLogin(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_1

    if-eqz p6, :cond_2

    :try_start_1
    const-string p0, "getUserLogin service is Error"

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v8, p6

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$o;

    const-string v6, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    :try_start_3
    invoke-direct/range {v0 .. v8}, Lcom/android/wiimu/upnp/impl/d$o;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v8, p6

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v8, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getUserLogin service is Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {v8, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public getUserLogout(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    const-string p0, "getUserLogout service is Error"

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wiimu/upnp/impl/d$p;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getUserLogin service is Error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public playQueueWithIndex(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$b0;

    new-instance v4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long p2, p2

    invoke-direct {v4, p2, p3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wiimu/upnp/impl/d$b0;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public removeTracksInQueue(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$a;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$a;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;IILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public replaceQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$b;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$b;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public searchQueueOnline(Ljava/lang/String;Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$e;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setKeyMapping(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$c;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$c;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setQueueLoopMode(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$d;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$d;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setQueuePolicy(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, "setQueuePolicy"

    const-string p1, "queueName"

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public setQueueRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$f;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$f;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setSongsRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$g;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$g;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setSpotifyPreset(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$i;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/d$i;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public userRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/d$h;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wiimu/upnp/impl/d$h;-><init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method
