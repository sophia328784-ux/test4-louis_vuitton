.class abstract Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
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
.field b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;


# direct methods
.method private constructor <init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v0, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->d:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget p1, p1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;-><init>(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;

    iget-object v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    iget v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;->d:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

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

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->b:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->a(Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->c:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$d;

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->e:Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;->d:I

    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap$c;->d:I

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void
.end method
