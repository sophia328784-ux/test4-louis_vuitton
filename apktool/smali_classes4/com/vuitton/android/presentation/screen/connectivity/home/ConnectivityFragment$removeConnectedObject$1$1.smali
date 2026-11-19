.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$removeLightUpProduct$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$removeLightUpProduct$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$removeLightUpProduct$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$removeLightUpProduct$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    invoke-static {p0, v1, v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    :cond_0
    return-void
.end method
