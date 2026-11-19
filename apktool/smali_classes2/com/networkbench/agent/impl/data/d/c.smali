.class public Lcom/networkbench/agent/impl/data/d/c;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field protected a:Lcom/networkbench/agent/impl/data/d/d;

.field protected b:Lcom/networkbench/agent/impl/data/d/d;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:J

.field protected f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/data/d/c;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p1, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    .line 87
    iget-object v0, p1, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    .line 88
    iget-object v0, p1, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/networkbench/agent/impl/data/d/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->g:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/networkbench/agent/impl/data/d/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->h:Ljava/lang/String;

    .line 91
    iget-boolean v0, p1, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    .line 92
    iget-object p1, p1, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/d/c;->e:J

    new-instance v0, Lcom/networkbench/agent/impl/data/d/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    new-instance p3, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p3, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "-"

    const-string v0, ""

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/networkbench/agent/impl/data/d/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "FeaturesData create : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->g:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/data/d/d;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/d/d;Z)V
    .locals 4

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    .line 93
    new-instance p2, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/data/d/c;->g:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/d/c;->e:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/d/h;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/h;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/h;->g()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    .line 101
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/h;->d()Lcom/networkbench/agent/impl/k/b;

    move-result-object p0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/h;->g()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p1

    iget-object p1, p1, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 88
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 91
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/d/c;->e:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    iget-boolean p2, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->h:Ljava/lang/String;

    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    :cond_0
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/data/d/c;->d:Z

    const-string v2, "col"

    const-string v3, "text"

    const-string v4, "id"

    const-string v5, "function"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "firstVc"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/c;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeaturesData{function=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->a:Lcom/networkbench/agent/impl/data/d/d;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', firstVc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', nextFunction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/d/c;->b:Lcom/networkbench/agent/impl/data/d/d;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', viewId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/d/c;->f:Ljava/lang/String;

    const-string v1, "\'} "

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
