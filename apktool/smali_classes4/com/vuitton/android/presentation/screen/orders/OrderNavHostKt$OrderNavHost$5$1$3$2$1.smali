.class final synthetic Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;->b:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;->d:Lkotlin/jvm/functions/Function1;

    const-string v4, "OrderNavHost$refreshOrdersAndRedirect(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "refreshOrdersAndRedirect"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;->b:Landroidx/navigation/NavHostController;

    invoke-static {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt;->b(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
