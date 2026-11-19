.class final Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

.field public final synthetic c:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->c:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->c:Landroidx/navigation3/runtime/NavBackStack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
