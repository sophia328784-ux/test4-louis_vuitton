.class public abstract Landroidx/loader/content/AsyncTaskLoader;
.super Landroidx/loader/content/Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/Loader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/concurrent/Executor;

.field public volatile g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

.field public volatile h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Landroidx/loader/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/Loader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean p2, p2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mCancellingTask="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean p0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->e:Z

    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-nez v0, :cond_1

    iput-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    return v1

    :cond_1
    iget-object p0, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    throw v3

    :cond_2
    iget-boolean v0, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    iget-object v2, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_4

    invoke-virtual {v2, v1}, Landroidx/loader/content/ModernAsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    :cond_3
    iput-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    return v0

    :cond_4
    iput-boolean v1, v2, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    throw v3

    :cond_5
    return v1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/loader/content/AsyncTaskLoader;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p0, v2}, Landroidx/loader/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/loader/content/ModernAsyncTask;

    return-void

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, v1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    throw v2

    :cond_1
    return-void
.end method

.method public abstract e()V
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->b()Z

    new-instance v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;-><init>(Landroidx/loader/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->g:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->d()V

    return-void
.end method
