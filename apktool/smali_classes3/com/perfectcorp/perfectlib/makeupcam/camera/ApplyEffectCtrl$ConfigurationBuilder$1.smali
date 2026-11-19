.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder$1;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader<",
        "Ljava/lang/Integer;",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;-><init>()V

    return-object p0
.end method
