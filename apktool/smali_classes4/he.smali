.class public final synthetic Lhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p4, p0, Lhe;->b:I

    iput-object p1, p0, Lhe;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iput-object p2, p0, Lhe;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iput-object p3, p0, Lhe;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lhe;->b:I

    const/4 v1, 0x2

    iget-object v2, p0, Lhe;->e:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lhe;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iget-object p0, p0, Lhe;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->V6(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->V6(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
