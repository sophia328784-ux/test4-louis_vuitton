.class public Lcom/batch/android/c0/d;
.super Lcom/batch/android/c0/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n0/b$b;
.implements Lcom/batch/android/z/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/c0/b<",
        "Lcom/batch/android/h0/d;",
        ">;",
        "Lcom/batch/android/n0/b$b;",
        "Lcom/batch/android/z/b$a;"
    }
.end annotation


# static fields
.field private static final u:Ljava/lang/String; = "ImageTemplateFragment"


# instance fields
.field private l:Lcom/batch/android/n0/b;

.field private m:Lcom/batch/android/a0/d;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Integer;

.field private r:Landroid/graphics/Bitmap;

.field private s:Lcom/batch/android/z/a;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/batch/android/c0/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/c0/d;->l:Lcom/batch/android/n0/b;

    iput-object v0, p0, Lcom/batch/android/c0/d;->m:Lcom/batch/android/a0/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/c0/d;->n:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/batch/android/c0/d;->o:Z

    iput-boolean v1, p0, Lcom/batch/android/c0/d;->p:Z

    iput-object v0, p0, Lcom/batch/android/c0/d;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/batch/android/c0/d;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/batch/android/c0/d;->s:Lcom/batch/android/z/a;

    iput-boolean v1, p0, Lcom/batch/android/c0/d;->t:Z

    iput-boolean v1, p0, Lcom/batch/android/c0/b;->c:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/d;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/batch/android/o0/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/batch/android/n0/b;

    invoke-direct {p0}, Lcom/batch/android/c0/d;->p()Lcom/batch/android/a0/d;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3, p0}, Lcom/batch/android/n0/b;-><init>(Landroid/content/Context;Lcom/batch/android/h0/d;Lcom/batch/android/a0/d;Lcom/batch/android/o0/a$a;)V

    invoke-virtual {v2, p0}, Lcom/batch/android/n0/b;->setActionListener(Lcom/batch/android/n0/b$b;)V

    iget-boolean v1, v0, Lcom/batch/android/h0/d;->k:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/batch/android/z/b;

    iget-boolean v0, v0, Lcom/batch/android/h0/d;->p:Z

    invoke-direct {v1, p1, v0}, Lcom/batch/android/z/b;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2}, Lcom/batch/android/n0/b;->getPannableView()Lcom/batch/android/n0/b$a;

    move-result-object v0

    invoke-virtual {v2}, Lcom/batch/android/n0/b;->getPanEffectsView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/batch/android/z/b;->a(Lcom/batch/android/j0/b;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lcom/batch/android/z/b;->a(Lcom/batch/android/z/b$a;)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/batch/android/c0/d;->p()Lcom/batch/android/a0/d;

    move-result-object v1

    new-instance v3, Lcom/batch/android/a0/b;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "root"

    invoke-direct {v3, v5, v4}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/batch/android/c0/d;->l:Lcom/batch/android/n0/b;

    return-object v0
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/d;)Lcom/batch/android/c0/d;
    .locals 1

    .line 94
    new-instance v0, Lcom/batch/android/c0/d;

    invoke-direct {v0}, Lcom/batch/android/c0/d;-><init>()V

    .line 95
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V

    return-object v0
.end method

.method private p()Lcom/batch/android/a0/d;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/c0/d;->m:Lcom/batch/android/a0/d;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/batch/android/a0/g;

    new-instance v1, Lcom/batch/android/b0/a;

    invoke-direct {v1}, Lcom/batch/android/b0/a;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v2

    check-cast v2, Lcom/batch/android/h0/d;

    iget-object v2, v2, Lcom/batch/android/h0/d;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c0/d;->m:Lcom/batch/android/a0/d;
    :try_end_0
    .catch Lcom/batch/android/a0/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "An error occurred while parsing message style"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Unparsable style"

    invoke-static {v0, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/batch/android/c0/d;->m:Lcom/batch/android/a0/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/batch/android/c0/d;->h()V

    .line 98
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/f0/d;)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/batch/android/c0/d;->h()V

    .line 101
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0, p1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/d;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/c0/d;->h()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/d;

    iget-object v1, v0, Lcom/batch/android/h0/d;->i:Lcom/batch/android/f0/a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {v2, v1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/a;)V

    iget-object v1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object p0

    iget-object v0, v0, Lcom/batch/android/h0/d;->i:Lcom/batch/android/f0/a;

    invoke-virtual {v1, v2, p0, v0}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    return-void

    :cond_0
    const-string p0, "ImageTemplateFragment"

    const-string v0, "Could not perform global tap action. Internal error."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->f()V

    return-void
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/d;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/d;->l:Lcom/batch/android/n0/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/n0/b;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Lcom/batch/android/c0/b;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    return-void
.end method

.method public i()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p0

    check-cast p0, Lcom/batch/android/h0/d;

    iget p0, p0, Lcom/batch/android/h0/d;->o:I

    return p0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/d;->l:Lcom/batch/android/n0/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/n0/b;->h()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/c0/d;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/d;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/i;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    check-cast p1, Lcom/batch/android/h0/d;

    iget-boolean p1, p1, Lcom/batch/android/h0/d;->p:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/batch/android/R$style;->com_batchsdk_ImageDialogFullscreenTheme:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/batch/android/R$style;->com_batchsdk_ImageDialogModalTheme:I

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/c0/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/batch/android/c0/d;->o:Z

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/batch/android/c0/d;->n:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/batch/android/c0/b;->onStart()V

    iget-object p0, p0, Lcom/batch/android/c0/d;->l:Lcom/batch/android/n0/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/n0/b;->g()V

    :cond_0
    return-void
.end method
