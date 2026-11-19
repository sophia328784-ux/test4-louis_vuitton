.class public final synthetic Lxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V
    .locals 0

    iput p2, p0, Lxi;->b:I

    iput-object p1, p0, Lxi;->c:Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lxi;->b:I

    iget-object p0, p0, Lxi;->c:Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->O(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->p(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->q(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->M(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
