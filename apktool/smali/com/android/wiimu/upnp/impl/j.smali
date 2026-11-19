.class public Lcom/android/wiimu/upnp/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuPlayQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/upnp/impl/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wiimu/upnp/impl/d;

    invoke-direct {v0}, Lcom/android/wiimu/upnp/impl/d;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/wiimu/upnp/impl/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/wiimu/upnp/impl/j;
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/impl/j$a;->a()Lcom/android/wiimu/upnp/impl/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/wiimu/upnp/IWiimuPlayQueue;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    return-void
.end method

.method public appendTracksInQueue(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->appendTracksInQueue(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public appendTracksInQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->appendTracksInQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public appendTracksInQueueEx(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->appendTracksInQueueEx(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    return-object p0
.end method

.method public backupQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->backupQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public browseNAS(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/nas/LPMediaServerPlayItem;IILcom/linkplay/core/nas/LPMediaServerResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseNAS(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/nas/LPMediaServerPlayItem;IILcom/linkplay/core/nas/LPMediaServerResultListener;)V

    :cond_0
    return-void
.end method

.method public browseQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public browseQueueUSBDisk(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->browseQueueUSBDisk(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public createQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->createQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public deleteQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->deleteQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getKeyMapping(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getKeyMapping(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getQueueIndex(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getQueueIndex(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getQueueLoopMode(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getQueueLoopMode(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getQueueOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p7}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getQueueOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getUserFavorites(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserFavorites(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;ZLcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserInfo(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;ZLcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getUserLogin(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p6}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserLogin(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getUserLogout(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->getUserLogout(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public playQueueWithIndex(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->playQueueWithIndex(Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public removeTracksInQueue(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->removeTracksInQueue(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public replaceQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->replaceQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public searchQueueOnline(Ljava/lang/String;Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->searchQueueOnline(Ljava/lang/String;Ljava/lang/String;ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setKeyMapping(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setKeyMapping(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setQueueLoopMode(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setQueueLoopMode(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setQueuePolicy(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setQueuePolicy(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setQueueRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setQueueRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setSongsRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setSongsRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setSpotifyPreset(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->setSpotifyPreset(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public userRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/j;->a:Lcom/android/wiimu/upnp/IWiimuPlayQueue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p0 .. p5}, Lcom/android/wiimu/upnp/IWiimuPlayQueue;->userRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method
