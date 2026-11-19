.class Lcom/perfectcorp/perfectlib/MakeupCam$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

.field private synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam$1;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam$1;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;->b:Lcom/perfectcorp/perfectlib/MakeupCam$1;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->b()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;->b:Lcom/perfectcorp/perfectlib/MakeupCam$1;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCam$1;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    return-object p0
.end method
