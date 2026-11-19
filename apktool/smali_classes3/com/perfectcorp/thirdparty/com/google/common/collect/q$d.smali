.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/i<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->c:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    if-eq v0, v1, :cond_1

    iget v1, v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    if-ge v0, v1, :cond_1

    iget-object v1, v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->k:I

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->c:I

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->a()V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->a()V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->c:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;->b:Ljava/lang/Object;

    invoke-virtual {v2, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object v1, p0, v0

    aput-object p1, p0, v0

    return-object v1
.end method
