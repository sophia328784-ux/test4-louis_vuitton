.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/work/Configuration$Builder;",
        "",
        "<init>",
        "()V",
        "Landroidx/work/Configuration;",
        "configuration",
        "(Landroidx/work/Configuration;)V",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Landroidx/work/WorkerFactory;

.field public final c:Landroidx/work/InputMergerFactory;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroidx/work/Clock;

.field public final f:Landroidx/work/RunnableScheduler;

.field public final g:J

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Landroidx/work/Tracer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    .line 60
    iput-wide v0, p0, Landroidx/work/Configuration$Builder;->g:J

    const/4 v0, 0x4

    .line 61
    iput v0, p0, Landroidx/work/Configuration$Builder;->h:I

    const v0, 0x7fffffff

    .line 62
    iput v0, p0, Landroidx/work/Configuration$Builder;->i:I

    const/16 v0, 0x14

    .line 63
    iput v0, p0, Landroidx/work/Configuration$Builder;->j:I

    const/16 v0, 0x8

    .line 64
    iput v0, p0, Landroidx/work/Configuration$Builder;->k:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Landroidx/work/Configuration$Builder;->l:Z

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/work/Configuration;->a:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Landroidx/work/Configuration;->e:Landroidx/work/WorkerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->b:Landroidx/work/WorkerFactory;

    iget-object v0, p1, Landroidx/work/Configuration;->f:Landroidx/work/InputMergerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->c:Landroidx/work/InputMergerFactory;

    iget-object v0, p1, Landroidx/work/Configuration;->c:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->d:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Landroidx/work/Configuration;->d:Landroidx/work/Clock;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->e:Landroidx/work/Clock;

    iget v0, p1, Landroidx/work/Configuration;->i:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->h:I

    iget v0, p1, Landroidx/work/Configuration;->j:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->i:I

    iget v0, p1, Landroidx/work/Configuration;->l:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->j:I

    iget-object v0, p1, Landroidx/work/Configuration;->g:Landroidx/work/RunnableScheduler;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->f:Landroidx/work/RunnableScheduler;

    iget-wide v0, p1, Landroidx/work/Configuration;->h:J

    iput-wide v0, p0, Landroidx/work/Configuration$Builder;->g:J

    iget v0, p1, Landroidx/work/Configuration;->k:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->k:I

    iget-boolean v0, p1, Landroidx/work/Configuration;->m:Z

    iput-boolean v0, p0, Landroidx/work/Configuration$Builder;->l:Z

    iget-object p1, p1, Landroidx/work/Configuration;->n:Landroidx/work/Tracer;

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->m:Landroidx/work/Tracer;

    return-void
.end method
