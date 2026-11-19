.class public final synthetic Landroidx/camera/video/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;

.field public final synthetic c:Landroidx/camera/video/Recorder$RecordingRecord;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;JILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/c;->b:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/c;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-wide p3, p0, Landroidx/camera/video/c;->d:J

    iput p5, p0, Landroidx/camera/video/c;->e:I

    iput-object p6, p0, Landroidx/camera/video/c;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    iget-object v1, p0, Landroidx/camera/video/c;->b:Landroidx/camera/video/Recorder;

    iget-object v2, p0, Landroidx/camera/video/c;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-wide v3, p0, Landroidx/camera/video/c;->d:J

    iget v5, p0, Landroidx/camera/video/c;->e:I

    iget-object v6, p0, Landroidx/camera/video/c;->f:Ljava/lang/Throwable;

    invoke-virtual/range {v1 .. v6}, Landroidx/camera/video/Recorder;->G(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    return-void
.end method
