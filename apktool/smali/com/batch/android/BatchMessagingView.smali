.class public Lcom/batch/android/BatchMessagingView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchMessagingView$Kind;
    }
.end annotation


# instance fields
.field private final a:Lcom/batch/android/BatchMessagingView$Kind;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchMessagingView$Kind;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    iput-object p2, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dismissFragment()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot dismiss a BatchMessagingView of kind "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Messaging"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dismissView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/batch/android/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/batch/android/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/a;->a(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot dismiss a BatchMessagingView of kind "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Messaging"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getKind()Lcom/batch/android/BatchMessagingView$Kind;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    return-object p0
.end method

.method public showFragment(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p2, "batch-messaging-fragment"

    :cond_0
    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot show a BatchMessagingView of kind "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as a fragment. Please use showView() instead."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Messaging"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-nez p2, :cond_0

    const-string p2, "batch-messaging-fragment"

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot show a BatchMessagingView of kind "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as a fragment. Please use showView() instead."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Messaging"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showView(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/batch/android/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/batch/android/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/a;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot show a BatchMessagingView of kind "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as a view. Please use showFragment() instead."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Messaging"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showView(Landroid/view/View;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/batch/android/a;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/batch/android/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/a;->b(Landroid/view/View;)V

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot show a BatchMessagingView of kind "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->a:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as a view. Please use showFragment() instead."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Messaging"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    iget-object p0, p0, Lcom/batch/android/BatchMessagingView;->b:Ljava/lang/Object;

    instance-of v0, p0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
