.class public final synthetic Lc41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Ljava/util/List;FFLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc41;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iput-object p2, p0, Lc41;->c:Ljava/util/List;

    iput p3, p0, Lc41;->d:F

    iput p4, p0, Lc41;->e:F

    iput-object p5, p0, Lc41;->f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    iput-object p6, p0, Lc41;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lc41;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object v1, p0, Lc41;->c:Ljava/util/List;

    iget v2, p0, Lc41;->d:F

    iget v3, p0, Lc41;->e:F

    iget-object v4, p0, Lc41;->f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    iget-object v5, p0, Lc41;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt;->b(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Ljava/util/List;FFLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
