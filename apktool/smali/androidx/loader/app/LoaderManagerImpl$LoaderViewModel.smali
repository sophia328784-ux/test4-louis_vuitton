.class Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderViewModel"
.end annotation


# static fields
.field public static final c:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final a:Landroidx/collection/SparseArrayCompat;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->c:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->a:Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->b:Z

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 9

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->e()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    iget-object v5, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->a:Landroidx/loader/content/Loader;

    invoke-virtual {v5}, Landroidx/loader/content/Loader;->b()Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/loader/content/Loader;->c:Z

    iget-object v7, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->c:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v7, :cond_0

    invoke-virtual {v4, v7}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v8, v5, Landroidx/loader/content/Loader;->a:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v8, :cond_3

    if-ne v8, v4, :cond_2

    iput-object v3, v5, Landroidx/loader/content/Loader;->a:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v7, :cond_1

    iget-boolean v3, v7, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->c:Z

    :cond_1
    iput-boolean v6, v5, Landroidx/loader/content/Loader;->d:Z

    iput-boolean v1, v5, Landroidx/loader/content/Loader;->b:Z

    iput-boolean v1, v5, Landroidx/loader/content/Loader;->c:Z

    iput-boolean v1, v5, Landroidx/loader/content/Loader;->e:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Attempting to unregister the wrong listener"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "No listener register"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->e:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->d:[Ljava/lang/Object;

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_5

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iput v1, p0, Landroidx/collection/SparseArrayCompat;->e:I

    iput-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->b:Z

    return-void
.end method
