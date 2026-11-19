.class public Lcom/networkbench/agent/impl/floatbtnmanager/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/WindowManager$LayoutParams;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget p1, v0, p1

    iput p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d:I

    const/4 p1, 0x1

    aget p1, v0, p1

    iput p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->c:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->b:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a:Landroid/view/View;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->c:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d:I

    return p0
.end method

.method public d()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/n;->b:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method
