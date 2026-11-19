.class public Lcom/linkplay/core/nas/LPMediaServerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RootID0:Ljava/lang/String; = "0"

.field private static instance:Lcom/linkplay/core/nas/LPMediaServerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failed(Ljava/lang/String;Lcom/linkplay/core/nas/LPMediaServerResultListener;)V
    .locals 0

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/linkplay/core/nas/LPMediaServerResultListener;->onFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/linkplay/core/nas/LPMediaServerManager;
    .locals 2

    sget-object v0, Lcom/linkplay/core/nas/LPMediaServerManager;->instance:Lcom/linkplay/core/nas/LPMediaServerManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/core/nas/LPMediaServerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/core/nas/LPMediaServerManager;->instance:Lcom/linkplay/core/nas/LPMediaServerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/core/nas/LPMediaServerManager;

    invoke-direct {v1}, Lcom/linkplay/core/nas/LPMediaServerManager;-><init>()V

    sput-object v1, Lcom/linkplay/core/nas/LPMediaServerManager;->instance:Lcom/linkplay/core/nas/LPMediaServerManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/linkplay/core/nas/LPMediaServerManager;->instance:Lcom/linkplay/core/nas/LPMediaServerManager;

    return-object v0
.end method

.method private success(Ljava/lang/String;Lcom/linkplay/core/nas/LPMediaServerResultListener;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createRootContainer(Lorg/teleal/cling/model/meta/Service;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1

    new-instance p0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content Directory on "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaServerCount()I
    .locals 0

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->getMediaServerCount()I

    move-result p0

    return p0
.end method

.method public getMediaServers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->getMediaServers()Landroid/widget/ArrayAdapter;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public searchMusic(Lcom/linkplay/core/nas/LPMediaServerItem;Lcom/linkplay/core/nas/LPMediaServerPlayItem;Lcom/linkplay/core/nas/LPMediaServerResultListener;)V
    .locals 6

    invoke-virtual {p1}, Lcom/linkplay/core/nas/LPMediaServerItem;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "device is null"

    invoke-direct {p0, p1, p3}, Lcom/linkplay/core/nas/LPMediaServerManager;->failed(Ljava/lang/String;Lcom/linkplay/core/nas/LPMediaServerResultListener;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/nas/LPMediaServerItem;->getCurrPage()I

    move-result v3

    invoke-virtual {p1}, Lcom/linkplay/core/nas/LPMediaServerItem;->getPerPage()I

    move-result v4

    move-object v2, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseNAS(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/nas/LPMediaServerPlayItem;IILcom/linkplay/core/nas/LPMediaServerResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
