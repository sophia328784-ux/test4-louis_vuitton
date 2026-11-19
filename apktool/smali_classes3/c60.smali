.class public final synthetic Lc60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lkotlin/Function;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc60;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc60;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc60;->h:Ljava/lang/Object;

    iput-object p3, p0, Lc60;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput p4, p0, Lc60;->e:F

    iput p5, p0, Lc60;->f:F

    iput-object p6, p0, Lc60;->i:Lkotlin/Function;

    iput-object p7, p0, Lc60;->j:Ljava/lang/Object;

    iput p8, p0, Lc60;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFII)V
    .locals 0

    .line 23
    const/4 p8, 0x0

    iput p8, p0, Lc60;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc60;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc60;->h:Ljava/lang/Object;

    iput-object p3, p0, Lc60;->i:Lkotlin/Function;

    iput-object p4, p0, Lc60;->j:Ljava/lang/Object;

    iput-object p5, p0, Lc60;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput p6, p0, Lc60;->e:F

    iput p7, p0, Lc60;->f:F

    iput p9, p0, Lc60;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lc60;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc60;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    iget-object v0, p0, Lc60;->i:Lkotlin/Function;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lc60;->j:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc60;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lc60;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lc60;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget v4, p0, Lc60;->e:F

    iget v5, p0, Lc60;->f:F

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ProductCarouselKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lc60;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lc60;->i:Lkotlin/Function;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function4;

    iget-object v0, p0, Lc60;->j:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/layout/WindowInsets;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x181

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lc60;->c:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Lc60;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget v6, p0, Lc60;->e:F

    iget v7, p0, Lc60;->f:F

    iget v10, p0, Lc60;->g:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVHeaderTopBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
