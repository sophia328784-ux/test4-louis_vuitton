.class public final synthetic Lcom/perfectcorp/perfectlib/makeupcam/camera/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;II)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->b:I

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->d:I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/p;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipStickConfiguration;

    invoke-virtual {p0, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LipLinerConfiguration;

    invoke-virtual {p0, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$HairDyeConfiguration;

    invoke-virtual {p0, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConcealerConfiguration;

    invoke-virtual {p0, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BronzerConfiguration;

    invoke-virtual {p0, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
