.class public Lcom/batch/android/c0/a;
.super Lcom/batch/android/c0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/c0/b<",
        "Lcom/batch/android/h0/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "AlertTemplateFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/c0/b;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/a;)Lcom/batch/android/c0/a;
    .locals 1

    .line 25
    new-instance v0, Lcom/batch/android/c0/a;

    invoke-direct {v0}, Lcom/batch/android/c0/a;-><init>()V

    .line 26
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V

    return-object v0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/h0/a;Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    iget-object p3, p1, Lcom/batch/android/h0/a;->j:Lcom/batch/android/f0/b;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Lcom/batch/android/i;->a(ILcom/batch/android/f0/b;)V

    iget-object p2, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object p0

    iget-object p1, p1, Lcom/batch/android/h0/a;->j:Lcom/batch/android/f0/b;

    invoke-virtual {p2, p3, p0, p1}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    return-void
.end method

.method public static synthetic q(Lcom/batch/android/c0/a;Lcom/batch/android/h0/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/c0/a;->a(Lcom/batch/android/h0/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/batch/android/c0/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/c0/a;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/a;

    const-string v1, "AlertTemplateFragment"

    if-nez v0, :cond_0

    const-string v0, "Unknown error while creating alert fragment. Please report this to Batch\'s support. (code -3)"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "Unknown error while creating alert fragment. Please report this to Batch\'s support. (code -5)"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {v2}, Lcom/batch/android/o0/c;->b(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    iget-object v1, v0, Lcom/batch/android/h0/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_2
    iget-object v1, v0, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/batch/android/h0/a;->i:Ljava/lang/String;

    new-instance v3, Lmc0;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lmc0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->j:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, v0, Lcom/batch/android/h0/a;->j:Lcom/batch/android/f0/b;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/batch/android/f0/b;->d:Ljava/lang/String;

    new-instance v3, Lz71;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lz71;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    :cond_3
    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->m:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
