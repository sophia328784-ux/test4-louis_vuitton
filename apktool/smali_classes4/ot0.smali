.class public final synthetic Lot0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;I)V
    .locals 0

    iput p2, p0, Lot0;->b:I

    iput-object p1, p0, Lot0;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lot0;->b:I

    iget-object p0, p0, Lot0;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lpt0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lpt0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
