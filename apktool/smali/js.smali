.class public final synthetic Ljs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ljs;->b:I

    iput-object p1, p0, Ljs;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    iget v0, p0, Ljs;->b:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    iget-object p0, p0, Ljs;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/Hilt_WifiDeviceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->j:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->d(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->j:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->Q()Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    new-instance v3, Lc61;

    const/4 v4, 0x6

    invoke-direct {v3, p1, p0, v4}, Lc61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v0, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->d(Landroidx/fragment/app/FragmentActivity;Lcom/linkplay/core/device/LPDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/Hilt_RoomDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;->d:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->d(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;->d:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    goto :goto_1

    :cond_4
    move-object p2, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v3, Lcl0;

    const/16 v4, 0x8

    invoke-direct {v3, p2, p1, p0, v4}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, p2, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->d(Landroidx/fragment/app/FragmentActivity;Lcom/linkplay/core/device/LPDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    :cond_7
    :goto_2
    return-void

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->M()V

    :cond_8
    return-void

    :pswitch_2
    check-cast p0, [Landroid/widget/EditText;

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_a

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_b
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
