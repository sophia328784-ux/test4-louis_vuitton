.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;
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
.field public synthetic a:Z

.field public synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

.field public synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;->a:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v2, v0, p1, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Z)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->g:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->g:Z

    :cond_0
    return-object v2
.end method
