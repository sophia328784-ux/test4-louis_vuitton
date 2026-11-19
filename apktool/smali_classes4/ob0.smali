.class public final synthetic Lob0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lob0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    iput-object p2, p0, Lob0;->d:Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lob0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob0;->d:Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;

    iput-object p2, p0, Lob0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lob0;->b:I

    iget-object v1, p0, Lob0;->d:Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;

    iget-object p0, p0, Lob0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;->a:Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->lb(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$ChangeLocationClickedEvent;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$ChangeLocationClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->gb(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$CloseSwapLocaleClickedEvent;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$CloseSwapLocaleClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->gb(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->k8()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
