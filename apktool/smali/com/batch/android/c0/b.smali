.class public abstract Lcom/batch/android/c0/b;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c0/e;
.implements Lcom/batch/android/o0/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/batch/android/f0/c;",
        ">",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/batch/android/c0/e;",
        "Lcom/batch/android/o0/a$a;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "BaseDialogFragment"

.field private static final j:Ljava/lang/String; = "messageModel"

.field static final k:Ljava/lang/String; = "autoCloseAt"


# instance fields
.field private a:Lcom/batch/android/f0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/batch/android/c0/c;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field protected d:J

.field private e:Landroid/os/Handler;

.field protected f:Lcom/batch/android/v0/g;

.field protected g:Lcom/batch/android/i;

.field protected h:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/c0/b;->a:Lcom/batch/android/f0/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/batch/android/c0/b;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/b;->c:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/batch/android/c0/b;->d:J

    new-instance v1, Landroid/util/LruCache;

    invoke-direct {v1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/batch/android/c0/b;->h:Landroid/util/LruCache;

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/BatchMessage;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "messageModel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, v0}, Lcom/batch/android/BatchMessage;->writeToBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/batch/android/c0/c;)V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/batch/android/c0/b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/batch/android/z/a$d;)V
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/batch/android/c0/b;->h:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/batch/android/z/a$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/batch/android/z/a$d;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/b;->h:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z/a$d;

    return-object p0
.end method

.method public f()V
    .locals 5

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/c0/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->i()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/batch/android/c0/b;->d:J

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->l()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batch/android/c0/b;->d:J

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/c0/b;->n()V

    return-void
.end method

.method public abstract g()Z
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public abstract i()I
.end method

.method public j()Lcom/batch/android/f0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/c0/b;->a:Lcom/batch/android/f0/c;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f0/c;

    iput-object v0, p0, Lcom/batch/android/c0/b;->a:Lcom/batch/android/f0/c;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/batch/android/c0/b;->a:Lcom/batch/android/f0/c;

    return-object p0
.end method

.method public k()Lcom/batch/android/BatchMessage;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/BatchMessage;->getMessageForBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchMessage;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BaseDialogFragment"

    const-string v1, "Error while reading payload message from fragment arguments"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/c0/b;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/c0/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lf31;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lf31;-><init>(Ljava/lang/Object;I)V

    iget-wide v2, p0, Lcom/batch/android/c0/b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iput-object v0, p0, Lcom/batch/android/c0/b;->e:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/c0/b;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/batch/android/c0/b;->e:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/n/s;->a(Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)Lcom/batch/android/i;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {v0, p1}, Lcom/batch/android/i;->b(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/batch/android/i;->d()V

    goto :goto_0

    :cond_1
    const-string v0, "BaseDialogFragment"

    const-string v1, "Could not create analytics delegate from arguments"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/batch/android/c0/b;->d:J

    const-string v2, "autoCloseAt"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/c0/b;->d:J

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/batch/android/c0/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/c0/c;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/batch/android/c0/c;->onDialogDismiss(Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/i;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/batch/android/i;->a(Landroid/os/Bundle;)V

    :cond_0
    iget-wide v0, p0, Lcom/batch/android/c0/b;->d:J

    const-string p0, "autoCloseAt"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/batch/android/c0/b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/c0/b;->n()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->o()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
