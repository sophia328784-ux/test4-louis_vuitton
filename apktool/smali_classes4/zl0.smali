.class public final synthetic Lzl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V
    .locals 0

    iput p2, p0, Lzl0;->b:I

    iput-object p1, p0, Lzl0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lzl0;->b:I

    const/4 v1, -0x1

    iget-object p0, p0, Lzl0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->C:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->L2()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->H(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a1()V

    :cond_2
    return-void

    :pswitch_2
    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->x:Lxl0;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lxl0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
