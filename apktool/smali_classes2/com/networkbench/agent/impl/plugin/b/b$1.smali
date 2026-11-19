.class Lcom/networkbench/agent/impl/plugin/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/plugin/g/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/b/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/b$1;->a:Lcom/networkbench/agent/impl/plugin/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b$1;->a:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v1, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->c:[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    sget-object v4, Lcom/networkbench/agent/impl/plugin/b/b;->k:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "record type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget v4, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/b$1;->a:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/b/b;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/b$1;->a:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v5, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/networkbench/agent/impl/plugin/b/b;->d:Ljava/lang/String;

    iget v5, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->b:I

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/networkbench/agent/impl/plugin/b/b;->f:J

    :cond_2
    iget v4, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/b$1;->a:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v3, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iput-object v3, v4, Lcom/networkbench/agent/impl/plugin/b/b;->c:Ljava/lang/String;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
