.class public final Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModel;",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;",
        "requireCachedConfigsVersionUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;->b:Landroidx/compose/runtime/MutableState;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;->c:Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl$getSyncVersion$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl$getSyncVersion$1;-><init>(Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final t5()Landroidx/compose/runtime/State;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;->c:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method
