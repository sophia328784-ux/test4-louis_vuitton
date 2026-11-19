.class public Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TO;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u00028\u00010\u0003B#\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;",
        "I",
        "O",
        "Landroidx/lifecycle/MediatorLiveData;",
        "initialValue",
        "Landroidx/arch/core/util/Function;",
        "mapFunction",
        "<init>",
        "(Ljava/lang/Object;Landroidx/arch/core/util/Function;)V",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Landroidx/arch/core/util/Function;

.field public d:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/arch/core/util/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Landroidx/arch/core/util/Function<",
            "TI;TO;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->c:Landroidx/arch/core/util/Function;

    return-void
.end method

.method public static d(Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Landroidx/lifecycle/LiveData;)V
    .locals 3

    new-instance v0, Ltb0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ltb0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lzi;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lzi;-><init>(Ljava/lang/Object;I)V

    invoke-super {p0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Landroidx/lifecycle/LiveData;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->d:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    :cond_0
    iput-object p1, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->d:Landroidx/lifecycle/LiveData;

    new-instance v0, Laa0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/Threads;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->d:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->c:Landroidx/arch/core/util/Function;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
