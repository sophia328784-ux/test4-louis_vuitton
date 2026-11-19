.class public final Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p4

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    if-nez p4, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x20

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p1, p4

    :cond_3
    and-int/lit16 p4, p1, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p4, v0, :cond_4

    move p4, v1

    goto :goto_3

    :cond_4
    move p4, v2

    :goto_3
    and-int/2addr p1, v1

    invoke-interface {p3, p1, p4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;

    const p4, 0x8c40e69

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p4

    iget-object p4, p4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, p4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object p4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v3, v0, v1, p4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_6

    :cond_5
    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$3$1$1$1$1$1;

    invoke-direct {v1, p4, p1}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$3$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object p4

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;->b:Ljava/lang/String;

    invoke-static {v2, p3, p4, p1}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogRowKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->d:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result p1

    if-ge p2, p1, :cond_7

    const p1, 0x8c93e33

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_7
    const p0, 0x8ca58d5

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v3, p0}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p3, p0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
