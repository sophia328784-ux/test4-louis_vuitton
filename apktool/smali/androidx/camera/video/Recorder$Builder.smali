.class public final Landroidx/camera/video/Recorder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/camera/video/MediaSpec$Builder;

.field public b:Ljava/util/concurrent/Executor;

.field public final c:Lno0;

.field public final d:Lno0;

.field public final e:Lno0;

.field public final f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->b:Ljava/util/concurrent/Executor;

    sget-object v0, Landroidx/camera/video/Recorder;->q0:Lno0;

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->c:Lno0;

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->d:Lno0;

    sget-object v0, Landroidx/camera/video/Recorder;->r0:Lno0;

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->e:Lno0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/camera/video/Recorder$Builder;->f:J

    new-instance v0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->c:Ljava/lang/Integer;

    invoke-static {}, Landroidx/camera/video/AudioSpec;->a()Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/video/AudioSpec$Builder;->a()Landroidx/camera/video/AudioSpec;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->b:Landroidx/camera/video/AudioSpec;

    invoke-static {}, Landroidx/camera/video/VideoSpec;->a()Landroidx/camera/video/VideoSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/video/VideoSpec$Builder;->a()Landroidx/camera/video/VideoSpec;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    iput-object v0, p0, Landroidx/camera/video/Recorder$Builder;->a:Landroidx/camera/video/MediaSpec$Builder;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/video/QualitySelector;)V
    .locals 3

    iget-object p0, p0, Landroidx/camera/video/Recorder$Builder;->a:Landroidx/camera/video/MediaSpec$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;

    iget-object v0, p0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/camera/video/AutoValue_VideoSpec;

    new-instance v1, Landroidx/camera/video/AutoValue_VideoSpec$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Landroidx/camera/video/AutoValue_VideoSpec;->c:Landroidx/camera/video/QualitySelector;

    iput-object v2, v1, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a:Landroidx/camera/video/QualitySelector;

    iget v2, v0, Landroidx/camera/video/AutoValue_VideoSpec;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->b:Ljava/lang/Integer;

    iget-object v2, v0, Landroidx/camera/video/AutoValue_VideoSpec;->e:Landroid/util/Range;

    iput-object v2, v1, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->c:Landroid/util/Range;

    iget v0, v0, Landroidx/camera/video/AutoValue_VideoSpec;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->d:Ljava/lang/Integer;

    iput-object p1, v1, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a:Landroidx/camera/video/QualitySelector;

    invoke-virtual {v1}, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a()Landroidx/camera/video/VideoSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/AutoValue_MediaSpec$Builder;->a:Landroidx/camera/video/VideoSpec;

    return-void

    :cond_0
    const-string p0, "Property \"videoSpec\" has not been set"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
