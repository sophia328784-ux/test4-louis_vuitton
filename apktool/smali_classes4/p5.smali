.class public final synthetic Lp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JII)V
    .locals 0

    .line 13
    iput p6, p0, Lp5;->b:I

    iput-object p1, p0, Lp5;->d:Ljava/lang/Object;

    iput-object p2, p0, Lp5;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lp5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;I)V
    .locals 0

    const/4 p5, 0x2

    iput p5, p0, Lp5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lp5;->c:J

    iput-object p4, p0, Lp5;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lp5;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lp5;->e:Ljava/lang/Object;

    iget-object v3, p0, Lp5;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x181

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-wide v5, p0, Lp5;->c:J

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->o(Ljava/lang/String;JLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    move-object v1, v2

    iget-wide v2, p0, Lp5;->c:J

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->l(Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v3

    check-cast v0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-wide p0, p0, Lp5;->c:J

    move-object v1, v2

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
