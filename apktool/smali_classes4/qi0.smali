.class public final synthetic Lqi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

.field public final synthetic c:Lkotlin/Pair;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lkotlin/Pair;ZZZLkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqi0;->b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iput-object p2, p0, Lqi0;->c:Lkotlin/Pair;

    iput-boolean p3, p0, Lqi0;->d:Z

    iput-boolean p4, p0, Lqi0;->e:Z

    iput-boolean p5, p0, Lqi0;->f:Z

    iput-object p6, p0, Lqi0;->g:Lkotlin/jvm/functions/Function1;

    iput p7, p0, Lqi0;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lqi0;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lqi0;->b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v1, p0, Lqi0;->c:Lkotlin/Pair;

    iget-boolean v2, p0, Lqi0;->d:Z

    iget-boolean v3, p0, Lqi0;->e:Z

    iget-boolean v4, p0, Lqi0;->f:Z

    iget-object v5, p0, Lqi0;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt;->e(Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lkotlin/Pair;ZZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
