.class public final synthetic Leu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/work/Configuration;

.field public final synthetic e:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/taskexecutor/SerialExecutor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu0;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Leu0;->c:Ljava/util/List;

    iput-object p3, p0, Leu0;->d:Landroidx/work/Configuration;

    iput-object p4, p0, Leu0;->e:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 6

    sget p2, Landroidx/work/impl/Schedulers;->a:I

    new-instance v0, Lxo;

    const/4 v5, 0x5

    iget-object v1, p0, Leu0;->c:Ljava/util/List;

    iget-object v3, p0, Leu0;->d:Landroidx/work/Configuration;

    iget-object v4, p0, Leu0;->e:Landroidx/work/impl/WorkDatabase;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lxo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Leu0;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
