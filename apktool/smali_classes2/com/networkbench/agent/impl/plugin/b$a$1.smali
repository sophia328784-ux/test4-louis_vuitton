.class Lcom/networkbench/agent/impl/plugin/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/plugin/g/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/b$a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V
    .locals 7

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/b$a;

    iget-object v0, v0, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v1, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/plugin/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->c:[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    if-nez v2, :cond_0

    iput-object v1, v0, Lcom/networkbench/agent/impl/plugin/b;->c:Ljava/lang/String;

    return-void

    :cond_0
    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, v2, v1

    iget v4, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/b$a;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/b;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/b$a;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v5, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/networkbench/agent/impl/plugin/b;->b:Ljava/lang/String;

    iget v5, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->b:I

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/networkbench/agent/impl/plugin/b;->d:J

    :cond_1
    iget v4, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b$a$1;->a:Lcom/networkbench/agent/impl/plugin/b$a;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/b$a;->a:Lcom/networkbench/agent/impl/plugin/b;

    iget-object v3, v3, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iput-object v3, v4, Lcom/networkbench/agent/impl/plugin/b;->a:Ljava/lang/String;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
