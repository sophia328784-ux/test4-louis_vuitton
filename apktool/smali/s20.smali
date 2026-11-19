.class public final synthetic Ls20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lr71;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lr71;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls20;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ls20;->b:Lr71;

    return-void
.end method


# virtual methods
.method public final onImageReleased(Landroid/media/ImageWriter;)V
    .locals 3

    new-instance v0, Ljr;

    const/16 v1, 0x15

    iget-object v2, p0, Ls20;->b:Lr71;

    invoke-direct {v0, v2, p1, v1}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Ls20;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
