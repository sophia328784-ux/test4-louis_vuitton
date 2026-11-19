.class public final synthetic Lzh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lcom/vuitton/android/presentation/utils/UrlFactory;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(FFLcom/vuitton/android/presentation/utils/UrlFactory;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzh0;->b:F

    iput p2, p0, Lzh0;->c:F

    iput-object p3, p0, Lzh0;->d:Lcom/vuitton/android/presentation/utils/UrlFactory;

    iput-object p4, p0, Lzh0;->e:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iput-object p5, p0, Lzh0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lzh0;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p7, p0, Lzh0;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lzh0;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v0, p0, Lzh0;->b:F

    iget v1, p0, Lzh0;->c:F

    iget-object v2, p0, Lzh0;->d:Lcom/vuitton/android/presentation/utils/UrlFactory;

    iget-object v3, p0, Lzh0;->e:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v4, p0, Lzh0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lzh0;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->i(FFLcom/vuitton/android/presentation/utils/UrlFactory;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
