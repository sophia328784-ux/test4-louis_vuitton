.class public final synthetic Landroidx/camera/camera2/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/LinkedHashSet;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashSet;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/v;->b:Ljava/util/LinkedHashSet;

    iput p2, p0, Landroidx/camera/camera2/internal/v;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget v0, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->b:I

    iget-object v0, p0, Landroidx/camera/camera2/internal/v;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    iget v2, p0, Landroidx/camera/camera2/internal/v;->c:I

    invoke-interface {v1, v2}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
