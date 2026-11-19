.class public abstract Landroidx/camera/video/internal/audio/AudioSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/AudioSettings$Builder;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const v0, 0x2ee00

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, 0xbb80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0xac44

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x5dc0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x5622

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x3e80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x2ee0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x2b11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x1f40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x12c0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/internal/audio/AudioSettings;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Landroidx/camera/video/internal/audio/AudioSettings$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->a:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->b:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->c:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->d:Ljava/lang/Integer;

    iput-object v1, v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->e:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 5

    check-cast p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;

    const/4 v0, 0x0

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid channel count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->f:I

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    const/16 v4, 0x15

    if-eq p0, v4, :cond_2

    const/16 v2, 0x16

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Invalid audio encoding: "

    invoke-static {p0, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v0

    :cond_2
    mul-int/2addr v1, v2

    return v1

    :cond_3
    :goto_1
    mul-int/2addr v1, v3

    :cond_4
    return v1

    :cond_5
    mul-int/2addr v1, v2

    return v1
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method
