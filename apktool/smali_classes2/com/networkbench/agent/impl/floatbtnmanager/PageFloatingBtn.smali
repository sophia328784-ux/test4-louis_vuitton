.class public Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;
.super Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Bitmap; = null

.field private static final b:Ljava/lang/String; = "PageFloatingBtn"

.field private static c:Lcom/networkbench/agent/impl/data/a/a; = null

.field private static final p:I = 0x123458

.field private static final r:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private d:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->r:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    new-instance p2, Lcom/networkbench/agent/impl/floatbtnmanager/a;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/a;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x123458

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "page.png"

    invoke-static {p1, v0, p2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    const-string p1, "\u9875\u9762"

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->m:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->q:I

    return p0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/j;->c()Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a([Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->d:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    new-instance v3, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    invoke-direct {v3}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;-><init>()V

    iput-object v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->d:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    sget-object v3, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->c:Lcom/networkbench/agent/impl/data/a/a;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "actionFetures"

    sget-object v5, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->c:Lcom/networkbench/agent/impl/data/a/a;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v4, p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->d:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    invoke-virtual {v4, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    iput v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->q:I

    new-instance v3, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn$1;

    invoke-direct {v3, p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn$1;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->d:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    const v1, 0x123458

    invoke-virtual {v2, v1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->r:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action floating view item add fragment failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public static setActionFeatures(Lcom/networkbench/agent/impl/data/a/a;)V
    .locals 0

    sput-object p0, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->c:Lcom/networkbench/agent/impl/data/a/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g()V

    .line 9
    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->d()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "OverviewFloatBtn not support this operation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method public getPosBeginX()I
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginX()I

    move-result p0

    return p0
.end method

.method public getPosBeginY()I
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginY()I

    move-result p0

    add-int/lit16 p0, p0, -0xb4

    return p0
.end method
