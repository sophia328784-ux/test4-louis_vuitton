.class public final synthetic Lwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

.field public final synthetic c:Landroidx/camera/core/Camera;

.field public final synthetic d:Landroidx/camera/core/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroidx/camera/core/Camera;Landroidx/camera/core/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi;->b:Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    iput-object p2, p0, Lwi;->c:Landroidx/camera/core/Camera;

    iput-object p3, p0, Lwi;->d:Landroidx/camera/core/Camera;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lwi;->d:Landroidx/camera/core/Camera;

    check-cast p1, Landroidx/camera/core/ZoomState;

    iget-object v1, p0, Lwi;->b:Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    iget-object p0, p0, Lwi;->c:Landroidx/camera/core/Camera;

    invoke-static {v1, p0, v0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->J(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroidx/camera/core/Camera;Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V

    return-void
.end method
