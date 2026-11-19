.class public Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/camera/video/internal/encoder/TimeProvider;

.field public final b:Landroidx/camera/core/impl/Timebase;

.field public final c:Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

.field public d:J

.field public e:Landroidx/camera/core/impl/Timebase;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/TimeProvider;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->d:J

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->a:Landroidx/camera/video/internal/encoder/TimeProvider;

    iput-object p2, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->b:Landroidx/camera/core/impl/Timebase;

    iput-object p3, p0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->c:Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->e:Landroidx/camera/core/impl/Timebase;

    const/4 v2, 0x0

    const-string v3, "VideoTimebaseConverter"

    iget-object v4, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->a:Landroidx/camera/video/internal/encoder/TimeProvider;

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->c:Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    iget-object v7, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->b:Landroidx/camera/core/impl/Timebase;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->b()J

    move-result-wide v8

    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->a()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v8, 0x2dc6c0

    cmp-long v1, v10, v8

    if-lez v1, :cond_4

    move v1, v6

    :goto_0
    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->b()J

    move-result-wide v8

    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->a()J

    move-result-wide v10

    sub-long v10, p1, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v8, v10, v8

    if-gez v8, :cond_1

    sget-object v8, Landroidx/camera/core/impl/Timebase;->REALTIME:Landroidx/camera/core/impl/Timebase;

    :goto_1
    move-object v15, v8

    goto :goto_2

    :cond_1
    sget-object v8, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_3

    if-eq v15, v7, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v1, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", SOC: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmd;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object v13, v7

    goto :goto_4

    :cond_2
    const-string v7, ""

    goto :goto_3

    :goto_4
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v14, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->b:Landroidx/camera/core/impl/Timebase;

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "Detected camera timebase inconsistent. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: %s, Model: %s, Hardware: %s, API Level: %d%s].\nCamera timebase is inconsistent. The timebase reported by the camera is %s, but the actual timebase contained in the frame is detected as %s."

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    :goto_5
    move-object v7, v15

    goto :goto_6

    :cond_3
    invoke-static {v15}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v5, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_5

    :cond_4
    :goto_6
    iput-object v7, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->e:Landroidx/camera/core/impl/Timebase;

    :cond_5
    sget-object v1, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter$1;->a:[I

    iget-object v7, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->e:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    const-wide/16 v7, 0x0

    if-eq v1, v6, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    return-wide p1

    :cond_6
    const-string v1, "Unknown timebase: "

    iget-object v0, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->e:Landroidx/camera/core/impl/Timebase;

    invoke-static {v0, v1}, Lbm;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-wide v7

    :cond_7
    iget-wide v9, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->d:J

    const-wide/16 v11, -0x1

    cmp-long v1, v9, v11

    if-nez v1, :cond_b

    const-wide v9, 0x7fffffffffffffffL

    move-wide v11, v7

    :goto_7
    if-ge v2, v5, :cond_a

    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->b()J

    move-result-wide v13

    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->a()J

    move-result-wide v15

    invoke-interface {v4}, Landroidx/camera/video/internal/encoder/TimeProvider;->b()J

    move-result-wide v17

    sub-long v19, v17, v13

    if-eqz v2, :cond_8

    cmp-long v1, v19, v9

    if-gez v1, :cond_9

    :cond_8
    add-long v13, v13, v17

    shr-long v9, v13, v6

    sub-long v11, v15, v9

    move-wide/from16 v9, v19

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->d:J

    invoke-static {v5, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_b
    iget-wide v0, v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->d:J

    sub-long v0, p1, v0

    return-wide v0
.end method
