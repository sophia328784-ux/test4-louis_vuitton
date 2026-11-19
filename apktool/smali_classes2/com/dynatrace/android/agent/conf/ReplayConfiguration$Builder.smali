.class public Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/ReplayConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->a:Z

    .line 46
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->b:Z

    .line 47
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->c:Z

    .line 48
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->d:I

    .line 49
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->e:I

    const/4 v1, 0x1

    .line 50
    iput v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->f:I

    .line 51
    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->g:I

    .line 52
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->h:Z

    .line 53
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->i:Z

    .line 54
    iput-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->a:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->b:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->c:Z

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->d:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->e:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->f:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->g:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->g:I

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->h:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->i:Z

    iget-boolean p1, p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->j:Z

    return-void
.end method
