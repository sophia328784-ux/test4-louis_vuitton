.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel<",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailView;",
        "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;",
        "getKeepAllFaqUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;)V",
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
.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;

.field public final d:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
