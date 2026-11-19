.class public final synthetic La71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;I)V
    .locals 0

    iput p2, p0, La71;->b:I

    iput-object p1, p0, La71;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, La71;->b:I

    iget-object p0, p0, La71;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;->W(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/wifilist/WifiListBottomSheet;)Lcom/lp/ble/manager/ApItem;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
