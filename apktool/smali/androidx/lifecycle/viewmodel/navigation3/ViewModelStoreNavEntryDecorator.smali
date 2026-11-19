.class public final Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;
.super Landroidx/navigation3/runtime/NavEntryDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/navigation3/runtime/NavEntryDecorator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u001f\u0008\u0017\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;",
        "T",
        "",
        "Landroidx/navigation3/runtime/NavEntryDecorator;",
        "viewModelStoreProvider",
        "Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;",
        "<init>",
        "(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "removeViewModelStoreOnPop",
        "Lkotlin/Function0;",
        "",
        "(Landroidx/lifecycle/ViewModelStore;Lkotlin/jvm/functions/Function0;)V",
        "lifecycle-viewmodel-navigation3"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStore;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/ViewModelStore;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 27
    new-instance v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v2, "androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecorator"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Ljava/lang/Object;Landroid/os/Bundle;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/lifecycle/ViewModelProvider$Factory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    invoke-direct {p0, v0}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V
    .locals 4

    new-instance v0, Lp11;

    const/16 v1, 0xf

    invoke-direct {v0, p1, v1}, Lp11;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lxe0;

    const/16 v2, 0x15

    invoke-direct {v1, p1, v2}, Lxe0;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x584a2e43

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Landroidx/navigation3/runtime/NavEntryDecorator;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
