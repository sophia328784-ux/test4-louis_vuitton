.class public final synthetic Lu30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/unit/Density;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p4, p0, Lu30;->b:I

    iput-object p1, p0, Lu30;->c:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Lu30;->d:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lu30;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lu30;->b:I

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    iget-object v4, p0, Lu30;->e:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lu30;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lu30;->c:Landroidx/compose/ui/unit/Density;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    and-long/2addr v2, v6

    long-to-int v0, v2

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v0

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v2

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result p0

    new-instance p1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v4, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    and-long/2addr v2, v6

    long-to-int v0, v2

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v0

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v2

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result p0

    new-instance p1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v4, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    and-long/2addr v2, v6

    long-to-int v0, v2

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v0

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v2

    shr-long v0, v2, v1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result p0

    new-instance p1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-interface {v4, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
