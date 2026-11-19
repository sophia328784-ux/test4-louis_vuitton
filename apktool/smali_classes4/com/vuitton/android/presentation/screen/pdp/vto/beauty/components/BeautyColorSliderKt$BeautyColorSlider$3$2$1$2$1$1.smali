.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;IILandroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->c:I

    iput p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->d:I

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->c:I

    iget v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->d:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->e:Landroid/content/Context;

    const v4, 0x7f140367

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :goto_0
    int-to-float v1, v2

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->w(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;F)V

    new-instance v1, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v1, v3, v3, v2, v3}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->f:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;->g:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v2, v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Landroidx/compose/runtime/MutableState;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
