.class public Lcom/networkbench/agent/impl/floatbtnmanager/ExistFloatingBtn;
.super Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;-><init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V

    new-instance p2, Lcom/networkbench/agent/impl/floatbtnmanager/a;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/a;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "exit.png"

    invoke-static {p1, v0, p2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    const-string p1, "\u9000\u51fa"

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "OverviewFloatBtn not support this operation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPosBeginX()I
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginX()I

    move-result p0

    add-int/lit16 p0, p0, -0xc8

    return p0
.end method

.method public getPosBeginY()I
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginY()I

    move-result p0

    return p0
.end method
