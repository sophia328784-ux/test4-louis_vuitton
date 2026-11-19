.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

.field private synthetic b:I

.field private synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeShadowConfiguration$1;->b:I

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    return-void
.end method
