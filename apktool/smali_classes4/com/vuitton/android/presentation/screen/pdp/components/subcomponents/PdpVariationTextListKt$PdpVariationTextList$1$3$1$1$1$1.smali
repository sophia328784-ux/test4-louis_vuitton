.class final Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->e:Ljava/lang/String;

    iput p5, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->f:I

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :goto_0
    new-instance v0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;->f:I

    invoke-direct {v0, v2, v2, p0, v2}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
