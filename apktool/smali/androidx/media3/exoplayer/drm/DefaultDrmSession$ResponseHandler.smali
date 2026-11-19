.class Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    if-ne v1, p1, :cond_a

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->z:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->a:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->z:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    instance-of p1, v0, Ljava/lang/Exception;

    if-nez p1, :cond_6

    instance-of p1, v0, Ljava/lang/NoSuchMethodError;

    if-eqz p1, :cond_2

    goto/16 :goto_3

    :cond_2
    :try_start_1
    check-cast v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    iget-object p1, v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->a:[B

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :try_start_2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:[B

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->i([B[B)[B

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v0, p1, Landroidx/media3/common/util/CopyOnWriteMultiset;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object p1, p1, Landroidx/media3/common/util/CopyOnWriteMultiset;->d:Ljava/util/Set;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w:[B

    invoke-interface {v1, v0, p1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->i([B[B)[B

    move-result-object p1

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->e:I

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:[B

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x:[B

    :cond_5
    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v0, p1, Landroidx/media3/common/util/CopyOnWriteMultiset;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object p1, p1, Landroidx/media3/common/util/CopyOnWriteMultiset;->d:Ljava/util/Set;

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_a .. :try_end_a} :catch_0

    :goto_2
    invoke-virtual {p0, p1, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->k(Ljava/lang/Throwable;Z)V

    goto :goto_4

    :cond_6
    :goto_3
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->k(Ljava/lang/Throwable;Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p0

    :cond_7
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    iget-object v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->A:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    if-ne v1, v6, :cond_a

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q:I

    if-eq v1, v4, :cond_8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->i()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->A:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p1, v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->a(Ljava/lang/Exception;Z)V

    goto :goto_4

    :cond_9
    :try_start_c
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    check-cast v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->a:[B

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->e([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->b()V

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-interface {p1, p0, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->a(Ljava/lang/Exception;Z)V

    :cond_a
    :goto_4
    return-void
.end method
