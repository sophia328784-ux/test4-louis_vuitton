.class public final synthetic Lo61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo61;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo61;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p2, p0, Lo61;->d:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lo61;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo61;->d:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iput-object p2, p0, Lo61;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lo61;->b:I

    iget-object v1, p0, Lo61;->d:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iget-object p0, p0, Lo61;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    new-instance v0, Ll61;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetCancelEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetCancelEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetCancelEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetCancelEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetCancelEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetCancelEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetCancelEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetCancelEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetCancelEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetCancelEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    :goto_0
    :pswitch_6
    new-instance v0, Ll61;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
