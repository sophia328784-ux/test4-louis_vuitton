.class Lcom/perfectcorp/perfectlib/MakeupCamInternal$2;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader<",
        "Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$2;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Z)V

    return-object v0
.end method
