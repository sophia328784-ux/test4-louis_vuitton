.class public final synthetic Ll61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V
    .locals 0

    iput p2, p0, Ll61;->b:I

    iput-object p1, p0, Ll61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ll61;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, Ll61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "KEY_CART_ID"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "NATIVE_CHECKOUT_PREVIOUS_SCREEN"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->a()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    :cond_1
    return-object v3

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "STORY_TITLE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    return-object v3

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "IS_PLP_STORY"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "IS_CART"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "DISPLAY_TOOLBAR"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->m1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->l1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v0, "KEY_IS_BOOKING_PAYMENT"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->k1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "BOOKING_PAYMENT_EXIT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetConfirmEvent;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetConfirmEvent;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetConfirmEvent;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetConfirmEvent;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetConfirmEvent;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    :goto_0
    :pswitch_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object v3

    :pswitch_11
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    if-eq p0, v0, :cond_9

    goto :goto_2

    :cond_9
    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_12
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->l1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->l1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->m1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->m1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_a

    const-string v0, "URL"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_a
    return-object v3

    :pswitch_17
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "BOOKING_PAYMENT_SUCCESS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->e1:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->l1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->m1:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_f
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string v0, "CUSTOMIZATION_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object p0

    if-nez p0, :cond_11

    :cond_10
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    :cond_11
    return-object p0

    :pswitch_1a
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string v0, "KEY_SHOW_CONTACT_US"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string v0, "KEY_IS_DISTANT_REPAIR_PBL"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
