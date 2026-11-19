.class final Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
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
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt$CategoryOptionsRow$1$1$2$1$1$1;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
