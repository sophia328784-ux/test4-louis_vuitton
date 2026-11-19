.class public abstract Landroidx/camera/video/VideoSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoSpec$Builder;
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Range;

.field public static final b:Landroidx/camera/video/QualitySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Landroidx/camera/video/VideoSpec;->a:Landroid/util/Range;

    sget-object v0, Landroidx/camera/video/Quality;->c:Landroidx/camera/video/Quality;

    sget-object v1, Landroidx/camera/video/Quality;->b:Landroidx/camera/video/Quality;

    sget-object v2, Landroidx/camera/video/Quality;->a:Landroidx/camera/video/Quality;

    filled-new-array {v0, v1, v2}, [Landroidx/camera/video/Quality;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/FallbackStrategy;->a:Landroidx/camera/video/FallbackStrategy;

    new-instance v2, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;-><init>(Landroidx/camera/video/Quality;I)V

    invoke-static {v1, v2}, Landroidx/camera/video/QualitySelector;->a(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/VideoSpec;->b:Landroidx/camera/video/QualitySelector;

    return-void
.end method

.method public static a()Landroidx/camera/video/VideoSpec$Builder;
    .locals 3

    new-instance v0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    sget-object v2, Landroidx/camera/video/VideoSpec;->b:Landroidx/camera/video/QualitySelector;

    if-eqz v2, :cond_1

    iput-object v2, v0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->a:Landroidx/camera/video/QualitySelector;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->b:Ljava/lang/Integer;

    sget-object v2, Landroidx/camera/video/VideoSpec;->a:Landroid/util/Range;

    if-eqz v2, :cond_0

    iput-object v2, v0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->c:Landroid/util/Range;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/AutoValue_VideoSpec$Builder;->d:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const-string v0, "Null bitrate"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "Null qualitySelector"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public abstract b()Landroid/util/Range;
.end method

.method public abstract c()I
.end method
