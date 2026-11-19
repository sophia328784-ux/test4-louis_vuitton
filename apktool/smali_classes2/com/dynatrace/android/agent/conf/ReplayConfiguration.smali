.class public final Lcom/dynatrace/android/agent/conf/ReplayConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final k:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;-><init>()V

    new-instance v1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->k:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->a:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->b:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->c:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->d:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->e:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->f:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->g:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->g:I

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->h:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->i:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    iget-boolean p1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->j:Z

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    iget-boolean v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    iget-boolean v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    iget v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    iget-boolean v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    iget v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->g:I

    iget v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->g:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    iget v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    iget-boolean v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    iget-boolean v1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    if-ne v0, v1, :cond_2

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    iget-boolean p1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReplayConfiguration{capture="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fullSessionConfigReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crashesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trafficControlPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retentionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", protocolVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selfMonitoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pixelCopy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", colorMasking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", composeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
