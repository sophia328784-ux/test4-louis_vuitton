.class public final synthetic Lmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-wide p2, p0, Lmi;->c:J

    return-void
.end method


# virtual methods
.method public final i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lni;

    iget-wide v1, p0, Lmi;->c:J

    invoke-direct {v0, v1, v2, p1}, Lni;-><init>(JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object p0, p0, Lmi;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->n(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "waitForSessionUpdateId:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
