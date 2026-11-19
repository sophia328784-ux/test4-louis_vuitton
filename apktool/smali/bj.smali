.class public final synthetic Lbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/CameraX;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lbj;->b:Landroidx/camera/core/CameraX;

    iput-object p7, p0, Lbj;->c:Ljava/util/concurrent/Executor;

    iput-wide p2, p0, Lbj;->d:J

    iput p1, p0, Lbj;->e:I

    iput-object p4, p0, Lbj;->f:Landroid/content/Context;

    iput-object p6, p0, Lbj;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    sget-object v0, Landroidx/camera/core/CameraX;->r:Ljava/lang/Object;

    iget v0, p0, Lbj;->e:I

    add-int/lit8 v2, v0, 0x1

    new-instance v1, Landroidx/camera/core/b;

    iget-wide v3, p0, Lbj;->d:J

    iget-object v5, p0, Lbj;->f:Landroid/content/Context;

    iget-object v6, p0, Lbj;->b:Landroidx/camera/core/CameraX;

    iget-object v7, p0, Lbj;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v8, p0, Lbj;->c:Ljava/util/concurrent/Executor;

    invoke-direct/range {v1 .. v8}, Landroidx/camera/core/b;-><init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    invoke-interface {v8, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
