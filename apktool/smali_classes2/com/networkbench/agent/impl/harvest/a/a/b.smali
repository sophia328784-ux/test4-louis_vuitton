.class public Lcom/networkbench/agent/impl/harvest/a/a/b;
.super Lcom/networkbench/agent/impl/harvest/a/a/c;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/a/a/c;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->a:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->b:I

    const/16 v1, 0xf0

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->c:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->d:I

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->e:I

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->f:I

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->g:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->a:I

    return p0
.end method

.method public a(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0x78

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->a:I

    return-void
.end method

.method public b()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->b:I

    return p0
.end method

.method public b(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x4

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->b:I

    return-void
.end method

.method public c()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->c:I

    return p0
.end method

.method public c(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0xf0

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->c:I

    return-void
.end method

.method public d()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->d:I

    return p0
.end method

.method public d(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x5

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->d:I

    return-void
.end method

.method public e()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->e:I

    return p0
.end method

.method public e(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0x78

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->e:I

    return-void
.end method

.method public f()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->f:I

    return p0
.end method

.method public f(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0xf0

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->f:I

    return-void
.end method

.method public g()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->g:I

    return p0
.end method

.method public g(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x5

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->g:I

    return-void
.end method

.method public h()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->h:I

    return p0
.end method

.method public h(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0xa

    :cond_0
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSBatteryConfig{gpsUseTimePer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsUseCount10m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsUseTime10m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wakeLockHeldTimePer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wakeLockHeldTime10m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wakeLockAcquiredCount10m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupAlarmCount10m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alarmCount10m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/a/a/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
