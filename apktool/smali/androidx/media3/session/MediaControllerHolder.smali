.class Landroidx/media3/session/MediaControllerHolder;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaController$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media3/session/MediaController;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "TT;>;",
        "Landroidx/media3/session/MediaController$ConnectionCallback;"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Landroidx/media3/session/MediaController;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerHolder;->b:Landroid/os/Handler;

    return-void
.end method
