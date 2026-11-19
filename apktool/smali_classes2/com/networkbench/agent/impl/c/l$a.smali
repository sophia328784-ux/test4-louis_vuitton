.class public Lcom/networkbench/agent/impl/c/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Lcom/networkbench/agent/impl/c/b;

.field e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/networkbench/agent/impl/c/l$a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/c/l$a;->b:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/c/l$a;->c:Z

    const-string v0, "NBSAgent"

    iput-object v0, p0, Lcom/networkbench/agent/impl/c/l$a;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/c/l$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/networkbench/agent/impl/c/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/networkbench/agent/impl/c/l$a;
    .locals 0

    .line 21
    iput p1, p0, Lcom/networkbench/agent/impl/c/l$a;->a:I

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/c/b;)Lcom/networkbench/agent/impl/c/l$a;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/networkbench/agent/impl/c/l$a;->d:Lcom/networkbench/agent/impl/c/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/networkbench/agent/impl/c/l$a;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/networkbench/agent/impl/c/l$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/networkbench/agent/impl/c/l$a;
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/c/l$a;->c:Z

    return-object p0
.end method

.method public a()Lcom/networkbench/agent/impl/c/l;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/c/l$a;->d:Lcom/networkbench/agent/impl/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/c/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/c/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/c/l$a;->d:Lcom/networkbench/agent/impl/c/b;

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/c/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/networkbench/agent/impl/c/l;-><init>(Lcom/networkbench/agent/impl/c/l$a;Lcom/networkbench/agent/impl/c/l$1;)V

    return-object v0
.end method

.method public b(I)Lcom/networkbench/agent/impl/c/l$a;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/c/l$a;->b:I

    return-object p0
.end method
