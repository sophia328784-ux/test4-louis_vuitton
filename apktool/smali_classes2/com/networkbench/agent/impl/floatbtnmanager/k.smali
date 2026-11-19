.class public Lcom/networkbench/agent/impl/floatbtnmanager/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/floatbtnmanager/d;


# instance fields
.field private final a:Lcom/networkbench/agent/impl/c/e;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->d()V

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/i;->a(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->c()V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    return-object p0
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->i()V

    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
