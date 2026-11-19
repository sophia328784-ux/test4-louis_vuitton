.class public final synthetic Ltt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

.field public final synthetic d:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;Lcom/linkplay/core/device/LPDevice;I)V
    .locals 0

    iput p3, p0, Ltt0;->b:I

    iput-object p1, p0, Ltt0;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    iput-object p2, p0, Ltt0;->d:Lcom/linkplay/core/device/LPDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ltt0;->b:I

    iget-object v1, p0, Ltt0;->d:Lcom/linkplay/core/device/LPDevice;

    iget-object p0, p0, Ltt0;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lut0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lut0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;Lcom/linkplay/core/device/LPDevice;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lut0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lut0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;Lcom/linkplay/core/device/LPDevice;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
