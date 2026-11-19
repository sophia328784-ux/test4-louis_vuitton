.class public final synthetic Li7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V
    .locals 0

    iput p2, p0, Li7;->b:I

    iput-object p1, p0, Li7;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Li7;->b:I

    iget-object p0, p0, Li7;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->SetEnabled(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
