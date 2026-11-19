.class public abstract Lcom/networkbench/agent/impl/harvest/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/harvest/d/c$a;
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:J

.field protected g:Ljava/lang/String;

.field protected h:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

.field protected i:Lcom/networkbench/agent/impl/data/c/a;

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->j:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->j:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->i:Lcom/networkbench/agent/impl/data/c/a;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->h:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public b()Lcom/networkbench/agent/impl/harvest/d/c$a;
    .locals 6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->a:Lcom/networkbench/agent/impl/harvest/d/c$a;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/d/c$a;->values()[Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c$a;->a()I

    move-result v4

    iget v5, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->q:Lcom/networkbench/agent/impl/harvest/d/c$a;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->d:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->f:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/GsonBuilder;->create()Lcom/networkbench/com/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/d/c$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/harvest/d/c$1;-><init>(Lcom/networkbench/agent/impl/harvest/d/c;)V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public e()Z
    .locals 1

    .line 25
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    const/16 v0, 0x199

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 2

    const-string v0, "error"

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->d:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->b()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->q:Lcom/networkbench/agent/impl/harvest/d/c$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h()Z
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->f()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    return p0
.end method

.method public j()Lcom/networkbench/agent/impl/harvest/d/c$a;
    .locals 6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->a:Lcom/networkbench/agent/impl/harvest/d/c$a;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/d/c$a;->values()[Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c$a;->a()I

    move-result v4

    iget v5, p0, Lcom/networkbench/agent/impl/harvest/d/c;->d:I

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->q:Lcom/networkbench/agent/impl/harvest/d/c$a;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->f:J

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public o()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object p0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->c:Z

    return p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->d:Ljava/lang/String;

    return-object p0
.end method

.method public q()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->h:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    return-object p0
.end method

.method public r()Lcom/networkbench/agent/impl/data/c/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->i:Lcom/networkbench/agent/impl/data/c/a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {  statusCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', responseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n responseBody=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \n configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/d/c;->h:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
