.class final synthetic Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$onCreateView$1$1$1$1$6$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
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
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->l:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->k(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
