.class public final synthetic Lg61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;I)V
    .locals 0

    iput p2, p0, Lg61;->b:I

    iput-object p1, p0, Lg61;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg61;->b:I

    const/4 v1, 0x0

    const-string v2, "connectivityRouter"

    iget-object p0, p0, Lg61;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH_V3:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
