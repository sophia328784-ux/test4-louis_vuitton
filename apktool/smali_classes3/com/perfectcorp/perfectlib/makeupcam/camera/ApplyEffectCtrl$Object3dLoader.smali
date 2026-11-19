.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Object3dLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->h:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/core/BaseVenus;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->environment_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    invoke-static {p1, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    if-nez v3, :cond_0

    new-instance v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;

    invoke-direct {v3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;-><init>()V

    iget-wide v4, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v4, v5, p0, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_LoadObject3DHDR(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {p3, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    const-string v3, ".hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/"

    invoke-static {p1, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lk7;

    invoke-direct {v5, p2, v1}, Lk7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    invoke-static {p1, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v2, v4, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "loadMaterialData path name case not matched!, obb: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", real file:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v4, v1

    const/4 v4, 0x5

    const-string v5, "ApplyEffectCtrl"

    invoke-static {p1, v2, v4, v5}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->ORM:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    if-ne p0, p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, ""

    iput-object p0, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->AMBIENT:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->ambient_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    invoke-static {v3, p0, v4, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->DIFFUSE:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->diffuse_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    invoke-static {v3, p0, v4, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->SPECULAR:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->specular_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    invoke-static {v3, p0, v4, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->NORMAL_MAP:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->normal_map_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    invoke-static {v3, p0, v4, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->ENVIRONMENT:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->environment_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    invoke-static {v3, p0, v4, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;->ORM:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;->orm_data:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;

    invoke-static {v3, p0, v2, p2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader$DataType;Ljava/lang/String;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;Ljava/util/Map;Ljava/util/HashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;)V
    .locals 9

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_LoadObject3DModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Load occluder file failed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->K:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
