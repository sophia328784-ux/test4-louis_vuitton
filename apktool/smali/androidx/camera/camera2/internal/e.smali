.class public final synthetic Landroidx/camera/camera2/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/camera/core/impl/SessionConfig;

.field public final synthetic f:Landroidx/camera/core/impl/UseCaseConfig;

.field public final synthetic g:Landroidx/camera/core/impl/StreamSpec;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Ljava/util/List;I)V
    .locals 0

    iput p7, p0, Landroidx/camera/camera2/internal/e;->b:I

    iput-object p1, p0, Landroidx/camera/camera2/internal/e;->c:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/e;->d:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/internal/e;->e:Landroidx/camera/core/impl/SessionConfig;

    iput-object p4, p0, Landroidx/camera/camera2/internal/e;->f:Landroidx/camera/core/impl/UseCaseConfig;

    iput-object p5, p0, Landroidx/camera/camera2/internal/e;->g:Landroidx/camera/core/impl/StreamSpec;

    iput-object p6, p0, Landroidx/camera/camera2/internal/e;->h:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/camera/camera2/internal/e;->b:I

    const-string v1, "Use case "

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/camera/camera2/internal/e;->c:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v3, p0, Landroidx/camera/camera2/internal/e;->d:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/internal/e;->e:Landroidx/camera/core/impl/SessionConfig;

    iget-object v5, p0, Landroidx/camera/camera2/internal/e;->f:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v6, p0, Landroidx/camera/camera2/internal/e;->g:Landroidx/camera/core/impl/StreamSpec;

    iget-object v7, p0, Landroidx/camera/camera2/internal/e;->h:Ljava/util/List;

    const-string p0, " ACTIVE"

    invoke-static {v1, v3, p0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->w(Ljava/lang/String;)V

    iget-object p0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->b:Landroidx/camera/core/impl/UseCaseAttachState;

    iget-object p0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;-><init>(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Ljava/util/List;)V

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v1, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->f:Z

    iget-object v2, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->b:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual/range {v2 .. v7}, Landroidx/camera/core/impl/UseCaseAttachState;->f(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->M()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/e;->c:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v3, p0, Landroidx/camera/camera2/internal/e;->d:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/internal/e;->e:Landroidx/camera/core/impl/SessionConfig;

    iget-object v5, p0, Landroidx/camera/camera2/internal/e;->f:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v6, p0, Landroidx/camera/camera2/internal/e;->g:Landroidx/camera/core/impl/StreamSpec;

    iget-object v7, p0, Landroidx/camera/camera2/internal/e;->h:Ljava/util/List;

    const-string p0, " UPDATED"

    invoke-static {v1, v3, p0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->w(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->b:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual/range {v2 .. v7}, Landroidx/camera/core/impl/UseCaseAttachState;->f(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->M()V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e;->c:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v3, p0, Landroidx/camera/camera2/internal/e;->d:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/internal/e;->e:Landroidx/camera/core/impl/SessionConfig;

    iget-object v5, p0, Landroidx/camera/camera2/internal/e;->f:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v6, p0, Landroidx/camera/camera2/internal/e;->g:Landroidx/camera/core/impl/StreamSpec;

    iget-object v7, p0, Landroidx/camera/camera2/internal/e;->h:Ljava/util/List;

    const-string p0, " RESET"

    invoke-static {v1, v3, p0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->w(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->b:Landroidx/camera/core/impl/UseCaseAttachState;

    invoke-virtual/range {v2 .. v7}, Landroidx/camera/core/impl/UseCaseAttachState;->f(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->s()V

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->F()V

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->M()V

    iget-object p0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->f:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    if-ne p0, v1, :cond_1

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->E()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
