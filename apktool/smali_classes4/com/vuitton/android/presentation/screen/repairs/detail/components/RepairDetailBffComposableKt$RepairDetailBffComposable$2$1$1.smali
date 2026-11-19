.class final Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p1, Lkotlin/Result$Failure;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$2$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->Z0(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
