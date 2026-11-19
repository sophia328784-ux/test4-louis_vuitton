.class public final synthetic Lcom/perfectcorp/perfectlib/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/l2;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/l2;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/l2;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/l2;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/l2;->d:Ljava/util/Map;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/l2;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/Map;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->t(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
