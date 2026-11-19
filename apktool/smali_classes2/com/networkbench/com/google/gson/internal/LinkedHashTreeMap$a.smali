.class final Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    .line 135
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    if-nez v0, :cond_0

    return-object p0

    .line 136
    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(I)V
    .locals 1

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 130
    iput v0, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->b:I

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    .line 132
    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    return-void
.end method

.method public a(Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    const/4 v0, 0x1

    iput v0, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    iget v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->b:I

    if-lez v1, :cond_0

    iget v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->b:I

    iget v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    :cond_0
    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, p1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    iget v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->b:I

    const/4 v3, 0x2

    if-lez v2, :cond_1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->b:I

    iget p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->d:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v4, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v5, v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v5, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v4, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->b:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget v5, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    add-int/2addr v5, v0

    iput v5, v2, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    iput-object v2, v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v2, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget-object v4, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v4, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput-object v1, v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->c:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iget v5, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->i:I

    iput-object v4, v1, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;->a:Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$f;

    iput v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    iput v2, p0, Lcom/networkbench/com/google/gson/internal/LinkedHashTreeMap$a;->c:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method
