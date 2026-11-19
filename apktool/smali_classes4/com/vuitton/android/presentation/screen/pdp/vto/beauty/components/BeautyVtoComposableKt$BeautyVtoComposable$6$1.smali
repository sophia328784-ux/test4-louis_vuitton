.class final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$6$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;",
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


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->H7(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
