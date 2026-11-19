.class public Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;
.super Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;
.source "SourceFile"


# static fields
.field private static final a:F = 66.0f


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->j:Z

    new-instance p2, Lcom/networkbench/agent/impl/floatbtnmanager/b;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/b;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p2, Lcom/networkbench/agent/impl/floatbtnmanager/a;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/a;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "window.png"

    invoke-static {p1, v0, p2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    const-string p1, "\u529f\u80fd"

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->m:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->i:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;->a(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f()V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "window_click.png"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewImage()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "window.png"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewImage()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 2

    .line 70
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0, p2, p3}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewXY(II)V

    .line 72
    iget-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->b(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    .line 73
    sput p2, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->n:I

    .line 74
    sput p3, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->o:I

    .line 75
    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)Z
    .locals 0

    .line 69
    instance-of p0, p1, Lcom/networkbench/agent/impl/floatbtnmanager/OverviewFloatBtn;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;

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

.method public getBtnRadius()F
    .locals 0

    const/high16 p0, 0x42840000    # 66.0f

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
