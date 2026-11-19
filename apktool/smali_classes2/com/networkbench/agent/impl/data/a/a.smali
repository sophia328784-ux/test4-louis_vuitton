.class public Lcom/networkbench/agent/impl/data/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String; = "ActionFeatures"

.field private static final b:J = 0x6ee4554f227L

.field private static final c:Ljava/lang/String; = "-1"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->d:Ljava/lang/String;

    const-string v1, "-1"

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/a/a;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 142
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->d:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/q;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->getColumn(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->getColumn(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->e:Ljava/lang/String;

    .line 146
    :cond_0
    sget v0, Lcom/networkbench/R$string;->view_attached_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    sget v0, Lcom/networkbench/R$string;->view_attached_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->j:Ljava/lang/String;

    .line 148
    :cond_1
    sget v0, Lcom/networkbench/R$string;->view_attached_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    sget v0, Lcom/networkbench/R$string;->view_attached_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->i:Ljava/lang/String;

    .line 150
    :cond_2
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->g:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/a;->h:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/a;->k:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(ZZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/data/a/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/a;->d:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p2, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "position"

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_1
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p2, p0, Lcom/networkbench/agent/impl/data/a/a;->g:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "path"

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p2, p0, Lcom/networkbench/agent/impl/data/a/a;->h:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "sn"

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/data/a/a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p2, p0, Lcom/networkbench/agent/impl/data/a/a;->i:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_2
    iget-object p1, p0, Lcom/networkbench/agent/impl/data/a/a;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p2, p0, Lcom/networkbench/agent/impl/data/a/a;->j:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "name"

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/data/a/a;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->k:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p0, "pn"

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_4
    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/networkbench/agent/impl/data/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/a;->f:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
