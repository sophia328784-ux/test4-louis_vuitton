.class public Lcom/networkbench/agent/impl/webview/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/webview/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->d:I

    iput v1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->e:I

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->g:Ljava/lang/String;

    iput v1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->h:I

    iput v1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->i:I

    iput v1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/webview/b/c$a;)Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/webview/b/c$a;)Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/webview/b/c$a;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->d:I

    return p0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/webview/b/c$a;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->e:I

    return p0
.end method

.method public static synthetic e(Lcom/networkbench/agent/impl/webview/b/c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/networkbench/agent/impl/webview/b/c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/networkbench/agent/impl/webview/b/c$a;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->h:I

    return p0
.end method

.method public static synthetic h(Lcom/networkbench/agent/impl/webview/b/c$a;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->i:I

    return p0
.end method

.method public static synthetic i(Lcom/networkbench/agent/impl/webview/b/c$a;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->a:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    .line 7
    iput p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/networkbench/agent/impl/webview/b/c;
    .locals 1

    .line 9
    new-instance v0, Lcom/networkbench/agent/impl/webview/b/c;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/webview/b/c;-><init>(Lcom/networkbench/agent/impl/webview/b/c$a;)V

    return-object v0
.end method

.method public b(I)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    .line 8
    iput p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->d:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    .line 7
    iput p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->e:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    .line 8
    iput p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->h:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lcom/networkbench/agent/impl/webview/b/c$a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/webview/b/c$a;->i:I

    return-object p0
.end method
