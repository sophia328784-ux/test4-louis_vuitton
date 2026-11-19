.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$2$2;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$2$2;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    invoke-virtual {p0, p2, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
