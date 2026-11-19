.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

.field private synthetic b:I

.field private synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

.field private synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;ILcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;->b:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EyeLashesConfiguration$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    return-void
.end method
