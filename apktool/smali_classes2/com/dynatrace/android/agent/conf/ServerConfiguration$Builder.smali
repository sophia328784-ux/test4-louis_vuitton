.class public Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/ServerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

.field public d:I

.field public e:I

.field public f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

.field public g:I

.field public h:I

.field public i:Z

.field public j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    .line 93
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->a:I

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->b:Z

    .line 95
    sget-object v1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iput-object v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    const/16 v1, 0x78

    .line 96
    iput v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->d:I

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->e:I

    .line 98
    sget-object v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->e:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iput-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    .line 99
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    const/16 v2, 0x64

    .line 100
    iput v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->h:I

    .line 101
    iput-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->i:Z

    .line 102
    sget-object v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->k:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    iput-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    .line 103
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->k:I

    .line 104
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    .line 105
    iput-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->m:Z

    .line 106
    sget-object v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->p:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    .line 107
    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->a:I

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->b:Z

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->d:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->e:I

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->h:I

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->i:Z

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;-><init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration;)V

    new-instance v0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-direct {v0, v1}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    iget-wide v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    iput-wide v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->k:I

    iput p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->m:Z

    sget-object p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->p:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-void

    :cond_0
    iget p2, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    iput p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->k:I

    iget p2, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    iput p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    iget-boolean p2, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->m:Z

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    return-void
.end method
