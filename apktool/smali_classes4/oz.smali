.class public final synthetic Loz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Loz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loz;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Loz;->h:Ljava/lang/Object;

    iput-object p3, p0, Loz;->i:Ljava/lang/Object;

    iput-object p4, p0, Loz;->j:Ljava/lang/Object;

    iput p5, p0, Loz;->d:I

    iput p6, p0, Loz;->e:I

    iput-object p7, p0, Loz;->k:Lkotlin/Function;

    iput p8, p0, Loz;->f:I

    iput p9, p0, Loz;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V
    .locals 1

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Loz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loz;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Loz;->h:Ljava/lang/Object;

    iput-object p3, p0, Loz;->i:Ljava/lang/Object;

    iput p4, p0, Loz;->d:I

    iput p5, p0, Loz;->e:I

    iput-object p6, p0, Loz;->j:Ljava/lang/Object;

    iput-object p7, p0, Loz;->k:Lkotlin/Function;

    iput p8, p0, Loz;->f:I

    iput p9, p0, Loz;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Loz;->b:I

    iget v2, v0, Loz;->f:I

    iget-object v3, v0, Loz;->k:Lkotlin/Function;

    iget-object v4, v0, Loz;->j:Ljava/lang/Object;

    iget-object v5, v0, Loz;->i:Ljava/lang/Object;

    iget-object v6, v0, Loz;->h:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-object v9, v5

    check-cast v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function1;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-object v7, v0, Loz;->c:Landroidx/compose/ui/Modifier;

    iget v10, v0, Loz;->d:I

    iget v11, v0, Loz;->e:I

    iget v0, v0, Loz;->g:I

    move/from16 v16, v0

    invoke-static/range {v7 .. v16}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/WishlistAnimationKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    check-cast v5, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    check-cast v4, Landroidx/compose/ui/Alignment$Vertical;

    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, v0, Loz;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v5

    iget v5, v0, Loz;->d:I

    move-object v2, v6

    iget v6, v0, Loz;->e:I

    iget v10, v0, Loz;->g:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
