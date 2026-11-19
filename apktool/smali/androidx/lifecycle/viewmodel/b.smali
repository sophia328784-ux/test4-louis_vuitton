.class public final synthetic Landroidx/lifecycle/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ReferenceToken;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

.field public final synthetic c:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/viewmodel/b;->b:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    iput-object p2, p0, Landroidx/lifecycle/viewmodel/b;->c:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    iput-object p3, p0, Landroidx/lifecycle/viewmodel/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/viewmodel/b;->b:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    iget v1, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->c:I

    iget-boolean v0, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->d:Z

    if-eqz v0, :cond_0

    if-gtz v1, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/viewmodel/b;->c:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->e()Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->yc(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
