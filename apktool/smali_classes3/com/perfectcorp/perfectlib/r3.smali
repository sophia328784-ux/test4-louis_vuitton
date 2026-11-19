.class public final synthetic Lcom/perfectcorp/perfectlib/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;Ljava/util/Map;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/r3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/r3;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/r3;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/r3;->d:Ljava/util/Map;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/r3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->t(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/Map;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
