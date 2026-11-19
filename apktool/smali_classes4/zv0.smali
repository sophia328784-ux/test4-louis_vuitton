.class public final synthetic Lzv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzv0;->b:Ljava/util/List;

    iput p2, p0, Lzv0;->c:F

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/pager/PagerScope;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lzv0;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    const/4 p2, 0x0

    iget p0, p0, Lzv0;->c:F

    invoke-static {p0, p2, p3, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt;->b(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
