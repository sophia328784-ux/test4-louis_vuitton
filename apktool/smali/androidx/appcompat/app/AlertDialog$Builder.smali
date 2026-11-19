.class public Landroidx/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$AlertParams;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput p2, p0, Landroidx/appcompat/app/AlertDialog$Builder;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    return-object p0
.end method

.method public b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->p:[Ljava/lang/CharSequence;

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->r:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    return-void
.end method

.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 11

    new-instance v0, Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->b:I

    invoke-direct {v0, v2, p0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v3, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->f:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iput-object p0, v3, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->e:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    iput-object p0, v3, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v4, v3, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    iput-object p0, v3, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    iput v2, v3, Landroidx/appcompat/app/AlertController;->B:I

    iget-object v4, v3, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->c:I

    if-eqz p0, :cond_3

    invoke-virtual {v3, p0}, Landroidx/appcompat/app/AlertController;->d(I)V

    :cond_3
    :goto_0
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    iput-object p0, v3, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    iget-object v4, v3, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, -0x1

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/app/AlertController;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$AlertParams;->j:Ljava/lang/CharSequence;

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, -0x2

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/app/AlertController;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->p:[Ljava/lang/CharSequence;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_7

    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->q:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_c

    :cond_7
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    iget v6, v3, Landroidx/appcompat/app/AlertController;->L:I

    invoke-virtual {p0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->u:Z

    if-eqz v6, :cond_8

    iget v6, v3, Landroidx/appcompat/app/AlertController;->M:I

    goto :goto_3

    :cond_8
    iget v6, v3, Landroidx/appcompat/app/AlertController;->N:I

    :goto_3
    iget-object v7, v1, Landroidx/appcompat/app/AlertController$AlertParams;->q:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance v7, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    iget-object v8, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    const v9, 0x1020014

    iget-object v10, v1, Landroidx/appcompat/app/AlertController$AlertParams;->p:[Ljava/lang/CharSequence;

    invoke-direct {v7, v8, v6, v9, v10}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_4
    iput-object v7, v3, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    iget v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->v:I

    iput v6, v3, Landroidx/appcompat/app/AlertController;->I:I

    iget-object v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->r:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_a

    new-instance v6, Landroidx/appcompat/app/AlertController$AlertParams$3;

    invoke-direct {v6, v1, v3}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_a
    iget-boolean v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->u:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_b
    iput-object p0, v3, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_c
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->t:Landroid/view/View;

    if-eqz p0, :cond_d

    iput-object p0, v3, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    iput v2, v3, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean v2, v3, Landroidx/appcompat/app/AlertController;->n:Z

    goto :goto_5

    :cond_d
    iget p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->s:I

    if-eqz p0, :cond_e

    iput-object v5, v3, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    iput p0, v3, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean v2, v3, Landroidx/appcompat/app/AlertController;->n:Z

    :cond_e
    :goto_5
    iget-boolean p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    if-eqz p0, :cond_f

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_f
    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->m:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->o:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_10

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_10
    return-object v0
.end method

.method public d(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->m:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public e(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public f(I)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public final g()Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->j:Ljava/lang/CharSequence;

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->t:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->s:I

    return-object p0
.end method
