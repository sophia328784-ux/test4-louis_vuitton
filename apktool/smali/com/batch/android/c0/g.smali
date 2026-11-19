.class public Lcom/batch/android/c0/g;
.super Lcom/batch/android/c0/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n0/d$a;
.implements Lcom/batch/android/z/a$c;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/c0/b<",
        "Lcom/batch/android/h0/g;",
        ">;",
        "Lcom/batch/android/n0/d$a;",
        "Lcom/batch/android/z/a$c;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/view/TextureView$SurfaceTextureListener;"
    }
.end annotation


# static fields
.field private static final x:Ljava/lang/String; = "UniversalTemplateFragment"

.field private static final y:Ljava/lang/String; = "messageModel"


# instance fields
.field private l:Lcom/batch/android/n0/d;

.field private m:Lcom/batch/android/a0/d;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Integer;

.field private r:Lcom/batch/android/z/a$d;

.field private s:Lcom/batch/android/z/a;

.field private t:Landroid/media/MediaPlayer;

.field private u:Z

.field private v:Landroid/view/Surface;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/batch/android/c0/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    iput-object v0, p0, Lcom/batch/android/c0/g;->m:Lcom/batch/android/a0/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/c0/g;->n:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/batch/android/c0/g;->o:Z

    iput-boolean v1, p0, Lcom/batch/android/c0/g;->p:Z

    iput-object v0, p0, Lcom/batch/android/c0/g;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/batch/android/c0/g;->r:Lcom/batch/android/z/a$d;

    iput-object v0, p0, Lcom/batch/android/c0/g;->s:Lcom/batch/android/z/a;

    iput-object v0, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/batch/android/c0/g;->u:Z

    iput-object v0, p0, Lcom/batch/android/c0/g;->v:Landroid/view/Surface;

    iput-boolean v1, p0, Lcom/batch/android/c0/g;->w:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/batch/android/o0/c;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/batch/android/n0/d;

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/batch/android/h0/g;

    invoke-direct {p0}, Lcom/batch/android/c0/g;->p()Lcom/batch/android/a0/d;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/c0/g;->r:Lcom/batch/android/z/a$d;

    invoke-direct {p0}, Lcom/batch/android/c0/g;->r()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/n0/d;-><init>(Landroid/content/Context;Lcom/batch/android/h0/g;Lcom/batch/android/a0/d;Lcom/batch/android/z/a$d;Z)V

    iput-object v0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    invoke-virtual {v0, p0}, Lcom/batch/android/n0/d;->setActionListener(Lcom/batch/android/n0/d$a;)V

    iget-object p1, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    invoke-virtual {p1, p0}, Lcom/batch/android/n0/d;->setSurfaceHolderCallback(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    return-object p0
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/g;)Lcom/batch/android/c0/g;
    .locals 1

    .line 44
    new-instance v0, Lcom/batch/android/c0/g;

    invoke-direct {v0}, Lcom/batch/android/c0/g;-><init>()V

    .line 45
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V

    return-object v0
.end method

.method private c(Lcom/batch/android/z/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/c0/g;->r:Lcom/batch/android/z/a$d;

    iget-object p0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    invoke-virtual {p0, p1}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method private p()Lcom/batch/android/a0/d;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/c0/g;->m:Lcom/batch/android/a0/d;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/batch/android/a0/g;

    new-instance v1, Lcom/batch/android/b0/a;

    invoke-direct {v1}, Lcom/batch/android/b0/a;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v2

    check-cast v2, Lcom/batch/android/h0/g;

    iget-object v2, v2, Lcom/batch/android/h0/g;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c0/g;->m:Lcom/batch/android/a0/d;
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
    iget-object p0, p0, Lcom/batch/android/c0/g;->m:Lcom/batch/android/a0/d;

    return-object p0
.end method

.method private q()V
    .locals 7

    invoke-direct {p0}, Lcom/batch/android/c0/g;->p()Lcom/batch/android/a0/d;

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
    iput-boolean v2, p0, Lcom/batch/android/c0/g;->n:Z

    iput-boolean v6, p0, Lcom/batch/android/c0/g;->o:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/batch/android/c0/g;->n:Z

    iput-boolean v6, p0, Lcom/batch/android/c0/g;->o:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/batch/android/c0/g;->o:Z

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

    iput-object v3, p0, Lcom/batch/android/c0/g;->q:Ljava/lang/Integer;

    iput-boolean v6, p0, Lcom/batch/android/c0/g;->p:Z

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/c0/g;->q:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcom/batch/android/c0/g;->p:Z

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

.method private declared-synchronized r()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c0/g;->r:Lcom/batch/android/z/a$d;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/g;

    iget-object v0, v0, Lcom/batch/android/h0/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/c0/g;->s:Lcom/batch/android/z/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/batch/android/c0/g;->u:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/c0/g;->v:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p0, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/batch/android/c0/g;->w:Z

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/batch/android/c0/g;->h()V

    .line 48
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public a(ILcom/batch/android/f0/b;)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/batch/android/c0/g;->w:Z

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/batch/android/c0/g;->h()V

    .line 52
    iget-object v0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/batch/android/i;->a(ILcom/batch/android/f0/b;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object p0

    invoke-virtual {p1, v0, p0, p2}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/batch/android/f0/d;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/batch/android/c0/g;->r:Lcom/batch/android/z/a$d;

    iget-object p0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    invoke-virtual {p0, p1}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method public b(Lcom/batch/android/z/a$d;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/z/a$d;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/batch/android/c0/g;->c(Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    invoke-virtual {p0}, Lcom/batch/android/n0/d;->e()V

    return-void
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/g;->w:Z

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/g;->w:Z

    return-void
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/n0/d;->a()Z

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

    iput-boolean v0, p0, Lcom/batch/android/c0/g;->w:Z

    return-void
.end method

.method public i()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p0

    check-cast p0, Lcom/batch/android/h0/g;

    iget p0, p0, Lcom/batch/android/h0/g;->w:I

    return p0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c0/g;->l:Lcom/batch/android/n0/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/n0/d;->k()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/c0/g;->w:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/g;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/i;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/batch/android/c0/g;->q()V

    iget-boolean p1, p0, Lcom/batch/android/c0/g;->o:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/batch/android/R$style;->com_batchsdk_UniversalDialogTheme:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/batch/android/R$style;->com_batchsdk_UniversalDialogTheme_Fullscreen:I

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

    iget-boolean v1, p0, Lcom/batch/android/c0/g;->o:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/batch/android/c0/g;->p:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/c0/g;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/c0/g;->q:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p2

    check-cast p2, Lcom/batch/android/h0/g;

    iget-object p3, p2, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/batch/android/c0/g;->u:Z

    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p3, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :try_start_0
    iget-object p3, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    iget-object v0, p2, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while creating the MediaPlayer for URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalTemplateFragment"

    invoke-static {v1, v0, p3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p3, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p3, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/c0/g;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iget-boolean p3, p0, Lcom/batch/android/c0/g;->o:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/batch/android/c0/g;->n:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p3

    or-int/lit16 p3, p3, 0x2000

    invoke-virtual {p1, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    iget-object p3, p2, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    if-nez p3, :cond_3

    iget-object p3, p2, Lcom/batch/android/h0/g;->m:Ljava/lang/String;

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/batch/android/c0/g;->s:Lcom/batch/android/z/a;

    if-nez v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/batch/android/c0/b;->b(Ljava/lang/String;)Lcom/batch/android/z/a$d;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p3}, Lcom/batch/android/c0/g;->c(Lcom/batch/android/z/a$d;)V

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/batch/android/z/a;

    invoke-direct {p3, p0}, Lcom/batch/android/z/a;-><init>(Lcom/batch/android/z/a$c;)V

    iput-object p3, p0, Lcom/batch/android/c0/g;->s:Lcom/batch/android/z/a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p2, Lcom/batch/android/h0/g;->m:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/batch/android/h0/g;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p3, "accessibility"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    const/16 v0, 0x80

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
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
    .locals 1

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iput-object v0, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/c0/g;->u:Z

    invoke-direct {p0}, Lcom/batch/android/c0/g;->s()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/batch/android/c0/g;->v:Landroid/view/Surface;

    iget-object p1, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/c0/g;->s()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/batch/android/c0/g;->t:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/batch/android/c0/g;->v:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/batch/android/c0/g;->v:Landroid/view/Surface;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
