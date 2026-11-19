.class public final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
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

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    if-nez p3, :cond_3

    invoke-interface {v6, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 p4, 0x92

    const/4 v0, 0x1

    if-eq p3, p4, :cond_4

    move p3, v0

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    and-int/2addr p1, v0

    invoke-interface {v6, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    const p1, 0x6e015cd4    # 1.0008947E28f

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "thematicPlp_regularItem_"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, p1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->f:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->c:Z

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->d:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridViewKt$RegularGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;->e:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/RegularGridItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_5
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
