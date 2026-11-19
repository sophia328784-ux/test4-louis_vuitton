.class public Lcom/networkbench/agent/impl/floatbtnmanager/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/networkbench/agent/impl/floatbtnmanager/g;

.field private static final d:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->d:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->c:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a:Landroid/view/WindowManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/networkbench/agent/impl/floatbtnmanager/g;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->b:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/g;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->b:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->b:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
