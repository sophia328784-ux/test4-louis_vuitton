.class public Lcom/batch/android/c0/f;
.super Lcom/batch/android/c0/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n0/a$a;
.implements Lcom/batch/android/z/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/c0/b<",
        "Lcom/batch/android/h0/f;",
        ">;",
        "Lcom/batch/android/n0/a$a;",
        "Lcom/batch/android/z/b$a;"
    }
.end annotation


# static fields
.field private static final u:Ljava/lang/String; = "ModalTemplateFragment"


# instance fields
.field private l:Lcom/batch/android/n0/a;

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

    iput-object v0, p0, Lcom/batch/android/c0/f;->l:Lcom/batch/android/n0/a;

    iput-object v0, p0, Lcom/batch/android/c0/f;->m:Lcom/batch/android/a0/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/c0/f;->n:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/batch/android/c0/f;->o:Z

    iput-boolean v1, p0, Lcom/batch/android/c0/f;->p:Z

    iput-object v0, p0, Lcom/batch/android/c0/f;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/batch/android/c0/f;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/batch/android/c0/f;->s:Lcom/batch/android/z/a;

    iput-boolean v1, p0, Lcom/batch/android/c0/f;->t:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/batch/android/h0/f;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/batch/android/o0/c;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/batch/android/n0/a;

    invoke-direct {p0}, Lcom/batch/android/c0/f;->p()Lcom/batch/android/a0/d;

    move-result-object v4

    new-instance v5, Lcom/batch/android/a0/b;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "container"

    invoke-direct {v5, v7, v6}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/batch/android/n0/a;-><init>(Landroid/content/Context;Lcom/batch/android/h0/c;Lcom/batch/android/a0/d;Lcom/batch/android/a0/b;Lcom/batch/android/o0/a$a;)V

    invoke-virtual {v1, v6}, Lcom/batch/android/n0/a;->setActionListener(Lcom/batch/android/n0/a$a;)V

    iget-boolean p0, v3, Lcom/batch/android/h0/c;->l:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/batch/android/z/b;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z/b;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lcom/batch/android/n0/a;->getContentView()Lcom/batch/android/s0/a;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/batch/android/z/b;->a(Lcom/batch/android/j0/b;Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/batch/android/z/b;->a(Lcom/batch/android/z/b$a;)V

    :cond_0
    new-instance p0, Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {v6}, Lcom/batch/android/c0/f;->p()Lcom/batch/android/a0/d;

    move-result-object v2

    new-instance v3, Lcom/batch/android/a0/b;

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "root"

    invoke-direct {v3, v4, v0}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    iput-object v1, v6, Lcom/batch/android/c0/f;->l:Lcom/batch/android/n0/a;

    return-object p0
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/f;)Lcom/batch/android/c0/f;
    .locals 1

    .line 93
    new-instance v0, Lcom/batch/android/c0/f;

    invoke-direct {v0}, Lcom/batch/android/c0/f;-><init>()V

    .line 94
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V

    return-object v0
.end method

.method private p()Lcom/batch/android/a0/d;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/c0/f;->m:Lcom/batch/android/a0/d;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/batch/android/a0/g;

    new-instance v1, Lcom/batch/android/b0/a;

    invoke-direct {v1}, Lcom/batch/android/b0/a;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v2

    check-cast v2, Lcom/batch/android/h0/f;

    iget-object v2, v2, Lcom/batch/android/h0/c;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c0/f;->m:Lcom/batch/android/a0/d;
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
    iget-object p0, p0, Lcom/batch/android/c0/f;->m:Lcom/batch/android/a0/d;

    return-object p0
.end method

.method private q()V
    .locals 7

    invoke-direct {p0}, Lcom/batch/android/c0/f;->p()Lcom/batch/android/a0/d;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "root"

    invoke-direct {v1, v4, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "statusbar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "light"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "dark"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "hidden"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/batch/android/c0/f;->n:Z

    iput-boolean v6, p0, Lcom/batch/android/c0/f;->o:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/batch/android/c0/f;->n:Z

    iput-boolean v6, p0, Lcom/batch/android/c0/f;->o:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/batch/android/c0/f;->o:Z

    goto :goto_0

    :cond_4
    const-string v5, "statusbar-bg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "translucent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v3, p0, Lcom/batch/android/c0/f;->q:Ljava/lang/Integer;

    iput-boolean v6, p0, Lcom/batch/android/c0/f;->p:Z

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/c0/f;->q:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcom/batch/android/c0/f;->p:Z

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_2
        0x2eef76 -> :sswitch_1
        0x6233516 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/batch/android/c0/f;->h()V

    .line 97
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public a(ILcom/batch/android/f0/b;)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/batch/android/c0/f;->h()V

    .line 100
    iget-object v0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/i;->a(ILcom/batch/android/f0/b;)V

    .line 101
    iget-object p1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object p0

    invoke-virtual {p1, v0, p0, p2}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/c0/f;->h()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/f;

    iget-object v1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    iget-object v2, v0, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/a;)V

    iget-object v1, v0, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object p0

    iget-object v0, v0, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    invoke-virtual {v1, v2, p0, v0}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    return-void

    :cond_0
    const-string p0, "ModalTemplateFragment"

    const-string v0, "Could not perform global tap action. Internal error."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/f;->h()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/f;->l:Lcom/batch/android/n0/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/n0/a;->e()Z

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

    iput-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    return-void
.end method

.method public i()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p0

    check-cast p0, Lcom/batch/android/h0/f;

    iget p0, p0, Lcom/batch/android/h0/c;->q:I

    return p0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/f;->l:Lcom/batch/android/n0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/n0/a;->i()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/c0/f;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/f;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/i;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/batch/android/c0/f;->q()V

    iget-boolean p1, p0, Lcom/batch/android/c0/f;->o:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/batch/android/R$style;->com_batchsdk_ModalDialogTheme:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/batch/android/R$style;->com_batchsdk_ModalDialogTheme_Fullscreen:I

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/batch/android/c0/f;->o:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/batch/android/c0/f;->p:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/c0/f;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/c0/f;->q:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/c0/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/batch/android/c0/f;->o:Z

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/batch/android/c0/f;->n:Z

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

    iget-object p0, p0, Lcom/batch/android/c0/f;->l:Lcom/batch/android/n0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/n0/a;->h()V

    :cond_0
    return-void
.end method
