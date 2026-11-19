.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

.field private synthetic b:I

.field private synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeContactConfiguration$1;->b:I

    invoke-virtual {v1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->g:I

    iput p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o:I

    return-void
.end method
