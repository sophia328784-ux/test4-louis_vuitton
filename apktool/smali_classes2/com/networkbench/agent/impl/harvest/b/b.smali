.class public Lcom/networkbench/agent/impl/harvest/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "NBSInitSwichControl"

.field private static b:I = -0x1

.field private static c:I = 0x1

.field private static d:Lcom/networkbench/agent/impl/harvest/b/b;


# instance fields
.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/networkbench/agent/impl/harvest/b/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->e:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->f:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->g:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->h:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/harvest/b/b;
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/b;->d:Lcom/networkbench/agent/impl/harvest/b/b;

    if-nez v0, :cond_0

    const-class v0, Lcom/networkbench/agent/impl/harvest/b/b;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/harvest/b/b;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/harvest/b/b;-><init>(Lcom/networkbench/agent/impl/harvest/b/a;)V

    sput-object v1, Lcom/networkbench/agent/impl/harvest/b/b;->d:Lcom/networkbench/agent/impl/harvest/b/b;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/b;->d:Lcom/networkbench/agent/impl/harvest/b/b;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 27
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->h:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->h:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->f:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 12
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->g:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->g:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->e:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 43
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->e:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->e:Z

    return-void
.end method

.method public c()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "customAction : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdkInitEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/b/b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSInitSwichControl"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->g:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u9996\u6b21\u542f\u52a8\u8bbe\u7f6eopt , setModuleSwitch :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    sput p1, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->h:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->f()V

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->c:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->oldFeatures:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/r;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/b/b;->e(I)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 28
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/b/b;->c(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/b/b;->b(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/b/b;->a(I)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/b/b;->i:Lcom/networkbench/agent/impl/harvest/b/a;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/networkbench/agent/impl/harvest/b/b;->c:I

    return-void
.end method

.method public g()Z
    .locals 4

    const-string v0, "            "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    const-string v0, "checkSwitchOfError ----------"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->c:I

    if-nez v0, :cond_0

    const-string p0, "\u81ea\u5b9a\u4e49\u9519\u8bef \u5224\u65ad,\u4e0a\u6b21init\u6210\u529f..\u6839\u636e\u4e0b\u53d1\u5f00\u5173, \u91c7\u96c6\u6570\u636e ...."

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->Y()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->d()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->d()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->c()I

    move-result v0

    const-string v1, "\u81ea\u5b9a\u4e49\u9519\u8bef\u5224\u65ad,\u4e0a\u6b21\u6ca1\u6709init\u6210\u529f...\u5f00\u5173\u53d7\u5386\u53f2\u5f00\u5173 \u548c \u5d29\u6e83\u6587\u4ef6\u5f00\u5173\u63a7\u5236...."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->d()Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public h()Z
    .locals 4

    const-string v0, "checkSwitchOfCrash ----------"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->c:I

    if-nez v0, :cond_0

    const-string p0, "\u5d29\u6e83\u91c7\u96c6 \u5224\u65ad,\u4e0a\u6b21init\u6210\u529f..\u6839\u636e\u4e0b\u53d1\u5f00\u5173, \u91c7\u96c6\u6570\u636e ...."

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ab()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->b()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->c()I

    move-result v0

    const-string v1, "\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u5224\u65ad,\u4e0a\u6b21\u6ca1\u6709init\u6210\u529f...\u5f00\u5173\u53d7\u5386\u53f2\u5f00\u5173 \u548c \u5d29\u6e83\u6587\u4ef6\u5f00\u5173\u63a7\u5236...."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public i()Z
    .locals 5

    const-string v0, "            "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    const-string v0, "checkSwitchOfAction ----------"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->c:I

    if-nez v0, :cond_0

    const-string p0, "\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u5224\u65ad,\u4e0a\u6b21init\u6210\u529f..\u6839\u636e\u4e0b\u53d1\u5f00\u5173, \u91c7\u96c6\u6570\u636e ...."

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "checkSwitchOfAction : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->Y()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->Y()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "\u6309\u7167\u9996\u6b21\u542f\u52a8\u65b9\u5f0f\u5f00\u542f\u5f00\u5173..."

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "setStartOption \u6ca1\u6709\u88ab\u8c03\u7528\u8fc7...\u53ea\u5224\u65adtag\u503c..."

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->c()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/networkbench/agent/impl/harvest/b/b;->b:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->c()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "oldFeature : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    const-string v1, "\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u5224\u65ad,\u4e0a\u6b21\u6ca1\u6709init\u6210\u529f...\u5f00\u5173\u53d7\u5386\u53f2\u5f00\u5173 \u548c \u5d29\u6e83\u6587\u4ef6\u5f00\u5173\u63a7\u5236...."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/b/b;->c()Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2
.end method
