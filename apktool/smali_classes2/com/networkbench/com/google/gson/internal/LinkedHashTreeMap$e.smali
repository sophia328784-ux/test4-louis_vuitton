.class abstract Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method private constructor <init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v0, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget p1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;

    iget-object v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    iget v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->d:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-object v0

    :cond_0
    invoke-static {}, Lv7;->c()V

    return-object v3

    :cond_1
    invoke-static {}, Lb21;->x()V

    return-object v3
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->e:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;->e:I

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$e;->d:I

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void
.end method
