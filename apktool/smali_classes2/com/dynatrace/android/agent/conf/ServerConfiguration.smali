.class public Lcom/dynatrace/android/agent/conf/ServerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;,
        Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;
    }
.end annotation


# static fields
.field public static final p:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

.field public final d:I

.field public final e:I

.field public final f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

.field public final o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->OK:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    sput-object v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->p:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->a:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->b:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->d:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->e:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->h:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->i:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->k:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->m:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    iget-wide v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    iput-wide v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    iget-wide v4, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    iget-wide v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    ushr-long v4, v2, v1

    xor-long v1, v2, v4

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerConfiguration{maxBeaconSizeKb="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selfmonitoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionSplitConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendIntervalSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxCachedCrashesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rageTapConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trafficControlPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gen3Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", replayConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiplicity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", switchServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    const/16 p0, 0x7d

    invoke-static {v0, v1, v2, p0}, Lfc;->k(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
