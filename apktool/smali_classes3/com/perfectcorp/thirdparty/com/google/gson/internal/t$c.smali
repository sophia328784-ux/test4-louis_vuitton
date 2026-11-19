.class abstract Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;
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
.field public b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public d:I

.field public final synthetic e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget p1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    iget-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

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

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->a()Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {v2, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iget v0, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;->d:I

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void
.end method
