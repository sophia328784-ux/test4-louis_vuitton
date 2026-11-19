.class public Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;
.super Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "activity"

.field public static final b:Ljava/lang/String; = "actionFetures"

.field public static c:Landroid/graphics/Bitmap; = null

.field public static final d:Ljava/lang/String; = "viewid"

.field private static final p:Ljava/lang/String; = "ActionFloatingViewItem"

.field private static final v:Lcom/networkbench/agent/impl/c/e;

.field private static final w:I = 0x123456


# instance fields
.field private q:Landroid/view/View;

.field private r:Z

.field private s:Landroid/view/View;

.field private t:Landroid/view/WindowManager$LayoutParams;

.field private u:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->v:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->r:Z

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->s:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    const/high16 v1, 0x77ff0000

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "hand_enable_new.png"

    invoke-static {p1, v0, p2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    const p1, 0x123456

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Lcom/networkbench/agent/impl/floatbtnmanager/b;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/b;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/networkbench/agent/impl/floatbtnmanager/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/a;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\u70b9\u9009"

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->m:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->x:I

    return p0
.end method

.method private m()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 84
    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->t:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x50138

    .line 87
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 90
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 91
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 92
    iget-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->s:Landroid/view/View;

    invoke-virtual {p1, p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    return-void
.end method

.method public a(Landroid/content/Context;IIII)V
    .locals 0

    .line 85
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->a(IIII)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 6

    invoke-virtual {p0, p2, p3}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewXY(II)V

    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object p3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, p3, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->b(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/q;->a(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->q:Landroid/view/View;

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->d()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget p3, p2, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p2, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->a(Landroid/content/Context;IIII)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->r:Z

    iput-object p1, v0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->q:Landroid/view/View;

    return-void

    :cond_2
    move-object v0, p0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->d()V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->r:Z

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->q:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)Z
    .locals 0

    .line 83
    instance-of p0, p1, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->i:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    instance-of v2, v1, Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setVisible(I)V

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-static {v3}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "window.png"

    invoke-static {v3, v4, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewImage()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setVisible(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 8

    const-string v0, "action floating view item add fragment failed:"

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->q:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->r:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a([Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->c:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v5, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->u:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    new-instance v5, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->u:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "viewid"

    invoke-static {v1}, Lcom/networkbench/agent/impl/data/a/h;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "activity"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/networkbench/agent/impl/data/a/a;

    invoke-direct {v6, v1}, Lcom/networkbench/agent/impl/data/a/a;-><init>(Landroid/view/View;)V

    const-string v1, "actionFetures"

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->u:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->x:I

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;

    invoke-direct {v1, p0, v3}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem$1;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;Landroid/app/FragmentManager;)V

    invoke-virtual {v3, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->u:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;

    const v3, 0x123456

    invoke-virtual {v4, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->v:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setVisible(I)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    const-string v0, "ActionFloatingViewItem"

    const-string v1, "error doTouchUp"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a(Landroid/view/View;)Z

    return-void
.end method

.method public getPosBeginX()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method public getPosBeginY()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method
