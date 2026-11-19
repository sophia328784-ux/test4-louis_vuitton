.class public final synthetic Lwh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lwh0;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lwh0;->d:F

    iput p4, p0, Lwh0;->e:F

    iput p5, p0, Lwh0;->f:F

    iput-object p6, p0, Lwh0;->g:Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iput-object p7, p0, Lwh0;->h:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iput-object p8, p0, Lwh0;->i:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    iput-object p9, p0, Lwh0;->j:Lkotlin/jvm/functions/Function1;

    iput p10, p0, Lwh0;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lwh0;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lwh0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lwh0;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lwh0;->d:F

    iget v3, p0, Lwh0;->e:F

    iget v4, p0, Lwh0;->f:F

    iget-object v5, p0, Lwh0;->g:Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iget-object v6, p0, Lwh0;->h:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v7, p0, Lwh0;->i:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    iget-object v8, p0, Lwh0;->j:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;FFFLcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
