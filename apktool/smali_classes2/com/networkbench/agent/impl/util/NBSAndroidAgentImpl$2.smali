.class Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;->b:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    iput-object p2, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/g/a/g;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;->a:Landroid/content/Context;

    new-instance v3, Lcom/networkbench/agent/impl/g/a/f;

    new-instance v4, Lcom/networkbench/agent/impl/g/a/e;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/g/a/e;-><init>()V

    invoke-direct {v3, v4}, Lcom/networkbench/agent/impl/g/a/f;-><init>(Lcom/networkbench/agent/impl/g/a/e;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/g/a/g;-><init>(Landroid/view/GestureDetector;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->registerMotionEventListener(Lcom/networkbench/agent/impl/g/a/c;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/networkbench/agent/impl/g/a/g;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;->a:Landroid/content/Context;

    new-instance v2, Lcom/networkbench/agent/impl/data/d/g;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/data/d/g;-><init>()V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/g/a/g;-><init>(Landroid/view/GestureDetector;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->registerMotionEventListener(Lcom/networkbench/agent/impl/g/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
