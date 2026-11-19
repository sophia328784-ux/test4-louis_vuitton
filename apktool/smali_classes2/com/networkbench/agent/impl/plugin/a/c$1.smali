.class Lcom/networkbench/agent/impl/plugin/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/a/c;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/networkbench/agent/impl/plugin/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/a/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/a/c$1;->a:Lcom/networkbench/agent/impl/plugin/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/a/a;Lcom/networkbench/agent/impl/plugin/a/a;)I
    .locals 0

    iget p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->i:I

    iget p1, p2, Lcom/networkbench/agent/impl/plugin/a/a;->i:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, -0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-le p0, p1, :cond_2

    return p2

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/plugin/a/a;

    check-cast p2, Lcom/networkbench/agent/impl/plugin/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/plugin/a/c$1;->a(Lcom/networkbench/agent/impl/plugin/a/a;Lcom/networkbench/agent/impl/plugin/a/a;)I

    move-result p0

    return p0
.end method
