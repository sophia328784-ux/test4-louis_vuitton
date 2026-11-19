.class public final synthetic Landroidx/lifecycle/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/viewmodel/a;->b:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/a;->b:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    iget-object v0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->a:Landroidx/lifecycle/ViewModelStore;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->b:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/lifecycle/ViewModelStore;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    invoke-direct {v1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroidx/lifecycle/ViewModel;

    check-cast v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    return-object v1

    :cond_1
    new-instance p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    invoke-direct {p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;-><init>()V

    return-object p0
.end method
