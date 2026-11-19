.class public final synthetic Lpi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;ZZI)V
    .locals 0

    const/4 p5, 0x2

    iput p5, p0, Lpi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpi0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lpi0;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Lpi0;->c:Z

    iput-boolean p4, p0, Lpi0;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;ZZLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 15
    const/4 p5, 0x0

    iput p5, p0, Lpi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpi0;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lpi0;->c:Z

    iput-boolean p3, p0, Lpi0;->d:Z

    iput-object p4, p0, Lpi0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;I)V
    .locals 0

    .line 16
    const/4 p5, 0x1

    iput p5, p0, Lpi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lpi0;->c:Z

    iput-object p2, p0, Lpi0;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lpi0;->d:Z

    iput-object p4, p0, Lpi0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lpi0;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lpi0;->f:Ljava/lang/Object;

    iget-object v3, p0, Lpi0;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-boolean v6, p0, Lpi0;->c:Z

    iget-boolean v7, p0, Lpi0;->d:Z

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/tutorial/TutorialAssetListKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;ZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v1, v3

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v3, v2

    check-cast v3, Landroidx/compose/material3/RadioButtonColors;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x31

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-boolean v0, p0, Lpi0;->c:Z

    iget-boolean v2, p0, Lpi0;->d:Z

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/RadioButtonKt;->a(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v3

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-boolean v1, p0, Lpi0;->c:Z

    iget-boolean v2, p0, Lpi0;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt;->b(Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
