.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
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
    .locals 2

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->S(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->S(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P:Z

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, p1, v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
