.class public final synthetic Lwr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DatePickerDefaults;ILandroidx/compose/ui/Modifier;JI)V
    .locals 0

    const/4 p6, 0x0

    iput p6, p0, Lwr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr;->f:Ljava/lang/Object;

    iput p2, p0, Lwr;->e:I

    iput-object p3, p0, Lwr;->c:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lwr;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 15
    const/4 p5, 0x2

    iput p5, p0, Lwr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr;->c:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lwr;->d:J

    iput-object p4, p0, Lwr;->f:Ljava/lang/Object;

    iput p6, p0, Lwr;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;JII)V
    .locals 0

    .line 16
    const/4 p5, 0x1

    iput p5, p0, Lwr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lwr;->f:Ljava/lang/Object;

    iput-wide p3, p0, Lwr;->d:J

    iput p6, p0, Lwr;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lwr;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lwr;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v3, p0, Lwr;->c:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Lwr;->d:J

    iget v9, p0, Lwr;->e:I

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/TopBarQRCodeKt;->a(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lwr;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v2

    iget-wide v2, p0, Lwr;->d:J

    iget v6, p0, Lwr;->e:I

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellFullKt;->f(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;JLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v2

    check-cast v0, Landroidx/compose/material3/DatePickerDefaults;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/material3/DatePickerDefaults;->a:Landroidx/compose/material3/DatePickerDefaults;

    const/16 p1, 0xc31

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    iget v1, p0, Lwr;->e:I

    iget-wide v3, p0, Lwr;->d:J

    iget-object v6, p0, Lwr;->c:Landroidx/compose/ui/Modifier;

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/DatePickerDefaults;->b(IIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
