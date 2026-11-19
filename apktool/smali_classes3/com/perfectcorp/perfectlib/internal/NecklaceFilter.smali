.class public Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;
.super Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;


# instance fields
.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const-string v0, "NecklaceFilter"

    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    :try_start_0
    const-string v1, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[createNecklaceFilter] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[createNecklaceFilter] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[createNecklaceFilter] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method


# virtual methods
.method public SetCameraRotation(I)V
    .locals 4

    const-string v0, "NecklaceFilter"

    const-string v1, "SetCameraRotation"

    :try_start_0
    const-string v2, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[SetCameraRotation] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[SetCameraRotation] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[SetCameraRotation] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method

.method public SetNecklaceMetadata(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "NecklaceFilter"

    const-string v1, "SetNecklaceMetadata"

    :try_start_0
    const-string v2, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[SetNecklaceMetadata] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[SetNecklaceMetadata] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[SetNecklaceMetadata] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method

.method public SetNecklaceModels(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/util/Map;

    const-class v1, Ljava/util/List;

    const-string v2, "NecklaceFilter"

    const-string v3, "SetNecklaceModels"

    :try_start_0
    const-string v4, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v1, v0, v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[SetNecklaceModels] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[SetNecklaceModels] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[SetNecklaceModels] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method

.method public SetSmoothEnablement(Z)V
    .locals 4

    const-string v0, "NecklaceFilter"

    const-string v1, "SetSmoothEnablement"

    :try_start_0
    const-string v2, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[SetSmoothEnablement] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[SetSmoothEnablement] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[SetSmoothEnablement] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method

.method public SetSmoothIntensity(F)V
    .locals 4

    const-string v0, "NecklaceFilter"

    const-string v1, "SetSmoothIntensity"

    :try_start_0
    const-string v2, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[SetSmoothIntensity] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[SetSmoothIntensity] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[SetSmoothIntensity] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    const-string v0, "["

    const-string v1, "NecklaceFilter"

    :try_start_0
    const-string v2, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v2, "] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-static {v0, p1, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->j(Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 5

    const-class v0, Ljava/nio/FloatBuffer;

    const-string v1, "NecklaceFilter"

    const-string v2, "onDraw"

    :try_start_0
    const-string v3, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[onDraw] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[onDraw] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[onDraw] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method

.method public onInit()V
    .locals 1

    const-string v0, "onInit"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->j(Ljava/lang/String;)V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 4

    const-string v0, "NecklaceFilter"

    const-string v1, "onOutputSizeChanged"

    :try_start_0
    const-string v2, "com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->p:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[onOutputSizeChanged] Failed to invoke default constructor of com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter because of "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "[onOutputSizeChanged] No default constructor for com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter"

    goto :goto_0

    :catch_1
    const-string p0, "[onOutputSizeChanged] No com.cyberlink.clgpuimage.accessory.CLNecklaceLiveFilter definition found"

    goto :goto_0
.end method
