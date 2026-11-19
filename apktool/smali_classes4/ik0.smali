.class public final synthetic Lik0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/LayoutDirection;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;I)V
    .locals 0

    iput p4, p0, Lik0;->b:I

    iput-object p1, p0, Lik0;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p2, p0, Lik0;->d:Ljava/util/Map;

    iput-object p3, p0, Lik0;->e:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lik0;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x20

    iget-object v3, p0, Lik0;->e:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v4, p0, Lik0;->d:Ljava/util/Map;

    iget-object p0, p0, Lik0;->c:Landroidx/compose/ui/unit/LayoutDirection;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d0()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    shr-long/2addr v0, v2

    long-to-int v1, v0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-int p1, v5

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v0, p1

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, p1, :cond_1

    int-to-float p0, v1

    sub-float v0, p0, v0

    :cond_1
    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    float-to-int p1, v0

    new-instance v0, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    invoke-direct {v0, p1}, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;-><init>(I)V

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d0()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    shr-long/2addr v0, v2

    long-to-int v1, v0

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-int p1, v5

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v0, p1

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, p1, :cond_3

    int-to-float p0, v1

    sub-float v0, p0, v0

    :cond_3
    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    float-to-int p1, v0

    new-instance v0, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    invoke-direct {v0, p1}, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;-><init>(I)V

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
