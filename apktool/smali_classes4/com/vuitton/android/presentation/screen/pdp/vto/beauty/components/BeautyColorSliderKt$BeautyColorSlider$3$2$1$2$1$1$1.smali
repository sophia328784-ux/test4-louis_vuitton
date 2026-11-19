.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
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
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
