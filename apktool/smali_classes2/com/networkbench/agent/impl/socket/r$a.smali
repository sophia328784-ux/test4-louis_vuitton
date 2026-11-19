.class public Lcom/networkbench/agent/impl/socket/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/socket/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/socket/r$a;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/r$a;->b:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/r$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/networkbench/agent/impl/socket/r$a;->a:I

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/r$a;->b:Z

    .line 16
    iput-object p2, p0, Lcom/networkbench/agent/impl/socket/r$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/r$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/r$a;->c:Ljava/lang/String;

    return-void
.end method
