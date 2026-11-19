.class Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d$1;
.super Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;)V
    .locals 1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d$1;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;

    iget-object p1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$d;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->b()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->f:Ljava/lang/Object;

    return-object p0
.end method
