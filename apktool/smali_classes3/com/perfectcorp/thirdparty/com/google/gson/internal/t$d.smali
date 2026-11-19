.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    iput-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->i:I

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p0, p4, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->e:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    iput-object p0, p3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    if-nez p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    xor-int p0, v1, v0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;->h:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
