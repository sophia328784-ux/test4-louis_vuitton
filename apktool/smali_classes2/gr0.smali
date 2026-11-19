.class public final synthetic Lgr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    iput p5, p0, Lgr0;->b:I

    iput-object p1, p0, Lgr0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lgr0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lgr0;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lgr0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lgr0;->b:I

    iget-boolean v1, p0, Lgr0;->c:Z

    iget-object v2, p0, Lgr0;->f:Ljava/lang/Object;

    iget-object v3, p0, Lgr0;->e:Ljava/lang/Object;

    iget-object p0, p0, Lgr0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    check-cast v3, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    check-cast v2, Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->b:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    iget-object v0, v2, Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;->a:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->e(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/Recorder;

    check-cast v3, Landroidx/camera/core/SurfaceRequest;

    check-cast v2, Landroidx/camera/core/impl/Timebase;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->c()Z

    :cond_0
    iput-boolean v1, p0, Landroidx/camera/video/Recorder;->l0:Z

    iput-object v3, p0, Landroidx/camera/video/Recorder;->A:Landroidx/camera/core/SurfaceRequest;

    iput-object v2, p0, Landroidx/camera/video/Recorder;->B:Landroidx/camera/core/impl/Timebase;

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v2, v0}, Landroidx/camera/video/Recorder;->h(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
