.class public final synthetic Lvp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lvp0;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iput p3, p0, Lvp0;->d:I

    iput p4, p0, Lvp0;->e:I

    iput-object p5, p0, Lvp0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lvp0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lvp0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lvp0;->i:Lkotlin/jvm/functions/Function2;

    iput p9, p0, Lvp0;->j:I

    iput p10, p0, Lvp0;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lvp0;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lvp0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lvp0;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget v2, p0, Lvp0;->d:I

    iget v3, p0, Lvp0;->e:I

    iget-object v4, p0, Lvp0;->f:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lvp0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lvp0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lvp0;->i:Lkotlin/jvm/functions/Function2;

    iget v10, p0, Lvp0;->k:I

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellFullKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
