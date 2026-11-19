.class Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    iput-object v1, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-object v0
.end method

.method public a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 25
    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 26
    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 27
    :cond_0
    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$b;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-void
.end method
