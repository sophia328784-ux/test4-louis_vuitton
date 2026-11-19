.class public final synthetic Lxz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V
    .locals 0

    iput p2, p0, Lxz0;->b:I

    iput-object p1, p0, Lxz0;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lxz0;->b:I

    iget-object p0, p0, Lxz0;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->X()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V()V

    new-instance v0, Lxz0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lxz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V

    new-instance v1, Lxz0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lxz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->W(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "tutorialFinished"

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/FragmentKt;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->X()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
