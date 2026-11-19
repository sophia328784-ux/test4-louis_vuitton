.class Lcom/networkbench/agent/impl/plugin/g/a$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/plugin/g/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/g/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/g/a$a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$2;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/g/a/b$b;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->c:[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    iget v3, v2, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$2;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object v3, v3, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object v2, v2, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/networkbench/agent/impl/plugin/g/a;->d(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$2;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    return-void
.end method
