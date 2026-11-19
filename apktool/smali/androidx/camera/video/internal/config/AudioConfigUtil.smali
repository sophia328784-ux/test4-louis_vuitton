.class public abstract Landroidx/camera/video/internal/config/AudioConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo;
    .locals 9

    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->a()I

    move-result v0

    const-string v1, "audio/vorbis"

    const-string v2, "audio/mp4a-latm"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->a()I

    move-result v4

    if-eq v4, v3, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->f()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->f()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->f()I

    move-result v5

    const-string v6, "audio/none"

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    const-string v8, "AudioConfigUtil"

    if-eqz v6, :cond_3

    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->a()I

    move-result p0

    if-ne p0, v2, :cond_4

    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-object v0, v4

    move v1, v5

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-ne v1, v5, :cond_5

    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-object v0, v4

    goto :goto_3

    :cond_5
    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_6
    :goto_2
    move-object p1, v3

    :goto_3
    new-instance p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;

    invoke-direct {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;-><init>()V

    if-eqz v0, :cond_a

    iput-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    iput-object p1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->c:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    :cond_7
    iget-object p1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->a:Ljava/lang/String;

    if-nez p1, :cond_8

    const-string p1, " mimeType"

    goto :goto_4

    :cond_8
    const-string p1, ""

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;

    iget-object v0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo$Builder;->c:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-direct {p1, v0, v1, p0}, Landroidx/camera/video/internal/config/AutoValue_AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    return-object p1

    :cond_9
    const-string p0, "Missing required properties:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_a
    const-string p0, "Null mimeType"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v3
.end method

.method public static b(Landroid/util/Range;IIILandroid/util/Rational;)Landroidx/camera/video/internal/config/CaptureEncodeRates;
    .locals 5

    if-nez p4, :cond_0

    invoke-static {p0, p2, p3, p1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->d(Landroid/util/Range;III)I

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_2

    :cond_0
    sget-object v0, Landroidx/camera/video/AudioSpec;->b:Landroid/util/Range;

    invoke-virtual {p0, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/camera/video/internal/config/CaptureEncodeRatesKt;->b(Landroid/util/Rational;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p4, v1}, Landroidx/camera/video/internal/config/CaptureEncodeRatesKt;->b(Landroid/util/Rational;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    :goto_1
    invoke-static {p4, p1}, Landroidx/camera/video/internal/config/CaptureEncodeRatesKt;->b(Landroid/util/Rational;I)I

    move-result v1

    invoke-static {v0, p2, p3, v1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->d(Landroid/util/Range;III)I

    move-result v0

    invoke-static {p4}, Landroidx/camera/video/internal/config/CaptureEncodeRatesKt;->a(Landroid/util/Rational;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "CaptureEncodeRates"

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :cond_2
    int-to-float v1, v0

    invoke-virtual {p4}, Landroid/util/Rational;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt;->c(F)I

    move-result v1

    :goto_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Hz/"

    const-string v3, "Hz, [target sample rate range: "

    const-string v4, "Resolved capture/encode sample rate "

    invoke-static {v0, v1, v4, v2, v3}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", target sample rate: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", channel count: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", source format: "

    const-string p1, ", capture to encode sample rate ratio: "

    invoke-static {p2, p3, p0, p1, v2}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    const-string p1, "AudioConfigUtil"

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;

    invoke-direct {p0, v0, v1}, Landroidx/camera/video/internal/config/CaptureEncodeRates;-><init>(II)V

    return-object p0
.end method

.method public static c(IIIIILandroid/util/Range;)I
    .locals 10

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, p3, p4}, Landroid/util/Rational;-><init>(II)V

    int-to-double v2, p0

    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    const/4 v1, 0x3

    const-string v2, "AudioConfigUtil"

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Base Bitrate(%dbps) * Channel Count Ratio(%d / %d) * Sample Rate Ratio(%d / %d) = %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    sget-object p0, Landroidx/camera/video/AudioSpec;->a:Landroid/util/Range;

    invoke-virtual {p0, p5}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\nClamped to range %s -> %dbps"

    filled-new-array {p5, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return v0
.end method

.method public static d(Landroid/util/Range;III)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "AudioConfigUtil"

    if-eqz v3, :cond_5

    if-lez v2, :cond_4

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    const/16 v6, 0xc

    const/16 v7, 0x10

    if-ne p1, v3, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-static {v2, v8, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    if-gtz v8, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v8, Landroid/media/AudioFormat$Builder;

    invoke-direct {v8}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v8, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    if-ne p1, v3, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v8, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_4
    :goto_2
    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_3
    if-nez v0, :cond_6

    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Landroidx/camera/video/internal/audio/AudioSettings;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lz9;

    invoke-direct {v2, p3}, Lz9;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_0

    :cond_7
    invoke-static {v4, v5}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const p0, 0xac44

    return p0
.end method
