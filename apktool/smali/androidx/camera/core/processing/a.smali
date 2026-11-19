.class public final synthetic Landroidx/camera/core/processing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/a;->b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput p2, p0, Landroidx/camera/core/processing/a;->c:I

    iput p3, p0, Landroidx/camera/core/processing/a;->d:I

    return-void
.end method


# virtual methods
.method public final i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroidx/camera/core/processing/AutoValue_DefaultSurfaceProcessor_PendingSnapshot;

    iget v1, p0, Landroidx/camera/core/processing/a;->c:I

    iget v2, p0, Landroidx/camera/core/processing/a;->d:I

    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/core/processing/AutoValue_DefaultSurfaceProcessor_PendingSnapshot;-><init>(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    new-instance v1, Landroidx/camera/core/processing/b;

    iget-object p0, p0, Landroidx/camera/core/processing/a;->b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroidx/camera/core/processing/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lzs;

    invoke-direct {v0, p1, v2}, Lzs;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->e(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string p0, "DefaultSurfaceProcessor#snapshot"

    return-object p0
.end method
