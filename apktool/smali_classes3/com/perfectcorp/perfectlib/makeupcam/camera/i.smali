.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final d:I

.field public final e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetMaxDetectedFaceCount()I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->d:I

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b:Ljava/lang/Object;

    new-instance p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-direct {p1, p2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/makeupcam/camera/i;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_decoder:[Z

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_sticker_displayed:[Z

    invoke-static {v4, v5, v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b(Ljava/util/ArrayList;[Z[ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_scene_decoder:[Z

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_scene_displayed:[Z

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b(Ljava/util/ArrayList;[Z[ZI)V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->p()Z

    move-result p0

    return p0
.end method

.method public final c()[Z
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->f:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f;->d:[Z

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->g:[Z

    return-object p0
.end method
