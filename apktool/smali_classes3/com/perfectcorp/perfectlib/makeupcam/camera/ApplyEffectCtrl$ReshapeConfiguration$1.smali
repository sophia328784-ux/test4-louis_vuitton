.class Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration$1;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration;

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration$1;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ReshapeConfiguration$1;->a:I

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->i:Ljava/util/EnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
