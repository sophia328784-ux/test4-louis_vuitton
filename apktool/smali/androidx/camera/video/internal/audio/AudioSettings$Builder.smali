.class public abstract Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/AudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# virtual methods
.method public final a()Landroidx/camera/video/internal/audio/AudioSettings;
    .locals 15

    check-cast p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->a:Ljava/lang/Integer;

    const-string v1, " audioSource"

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->b:Ljava/lang/Integer;

    const-string v4, " captureSampleRate"

    if-nez v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->c:Ljava/lang/Integer;

    const-string v5, " encodeSampleRate"

    if-nez v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->d:Ljava/lang/Integer;

    const-string v6, " channelCount"

    if-nez v3, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->e:Ljava/lang/Integer;

    const-string v7, " audioFormat"

    if-nez v3, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_b

    new-instance v9, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct/range {v9 .. v14}, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;-><init>(IIIII)V

    const/4 p0, -0x1

    if-ne v10, p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-gtz v11, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-gtz v12, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-gtz v13, :cond_8

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-ne v14, p0, :cond_9

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    return-object v9

    :cond_a
    const-string p0, "Required settings missing or non-positive:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v8

    :cond_b
    const-string p0, "Missing required properties:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8
.end method

.method public abstract b(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract c(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract d(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract e(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract f(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method
