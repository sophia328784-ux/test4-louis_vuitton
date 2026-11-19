.class public final synthetic Lbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V
    .locals 0

    iput p2, p0, Lbe;->b:I

    iput-object p1, p0, Lbe;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lbe;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lbe;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->SKIN_SMOOTH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v0, 0x1e

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$configureSkinSmoothEffect$1;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$configureSkinSmoothEffect$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier;->setIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    if-eqz p0, :cond_1

    sget v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->i:I

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->CAMERA_2:Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    sget-object v1, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->a(Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->F0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->enableComparison(Z)V

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->E6()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->enableComparison(Z)V

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->E6()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    iget-object v1, p0, Lbe;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->ia()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;

    if-eqz p0, :cond_5

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;->a:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;->b:Ljava/lang/String;

    const/16 v6, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/utils/ShareUtilsKt;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    new-instance p0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->C:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p0, v0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
