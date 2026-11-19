.class public final synthetic Lfi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;III)V
    .locals 0

    iput p6, p0, Lfi0;->b:I

    iput-object p1, p0, Lfi0;->c:Ljava/lang/String;

    iput-object p2, p0, Lfi0;->d:Ljava/lang/String;

    iput-object p3, p0, Lfi0;->e:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    iput p4, p0, Lfi0;->f:I

    iput p5, p0, Lfi0;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lfi0;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lfi0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v1, p0, Lfi0;->c:Ljava/lang/String;

    iget-object v2, p0, Lfi0;->d:Ljava/lang/String;

    iget-object v3, p0, Lfi0;->e:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    iget v6, p0, Lfi0;->g:I

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lfi0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget-object v0, p0, Lfi0;->c:Ljava/lang/String;

    iget-object v1, p0, Lfi0;->d:Ljava/lang/String;

    iget-object v2, p0, Lfi0;->e:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;

    iget v5, p0, Lfi0;->g:I

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
