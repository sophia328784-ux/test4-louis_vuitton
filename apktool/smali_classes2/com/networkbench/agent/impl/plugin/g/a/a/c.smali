.class public final Lcom/networkbench/agent/impl/plugin/g/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x5


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    iput p3, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->e:I

    iput-wide p4, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->f:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    iget v3, p1, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->e:I

    iget v3, p1, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->e:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->f:J

    iget-wide p0, p1, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->f:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "A"

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "CNAME"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->c:Ljava/lang/String;

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/c;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
