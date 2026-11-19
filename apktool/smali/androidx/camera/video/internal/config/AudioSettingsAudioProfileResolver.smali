.class public final Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Supplier<",
        "Landroidx/camera/video/internal/audio/AudioSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/camera/video/AudioSpec;

.field public final b:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

.field public final c:Landroid/util/Rational;


# direct methods
.method public constructor <init>(Landroidx/camera/video/AudioSpec;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroid/util/Rational;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->a:Landroidx/camera/video/AudioSpec;

    iput-object p2, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->b:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    iput-object p3, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->c:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->a:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->e()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "AudioConfigUtil"

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_0
    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->f()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_1
    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->c()I

    move-result v3

    iget-object v6, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->b:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-virtual {v6}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->c()I

    move-result v7

    const-string v8, "AudioSrcAdPrflRslvr"

    if-ne v3, v4, :cond_2

    invoke-static {v2, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move v3, v7

    goto :goto_2

    :cond_2
    invoke-static {v2, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_2
    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->d()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v6}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->g()I

    move-result v4

    iget-object p0, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->c:Landroid/util/Rational;

    invoke-static {v0, v4, v3, v5, p0}, Landroidx/camera/video/internal/config/AudioConfigUtil;->b(Landroid/util/Range;IIILandroid/util/Rational;)Landroidx/camera/video/internal/config/CaptureEncodeRates;

    move-result-object p0

    invoke-static {v2, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSettings;->a()Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->c(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    invoke-virtual {v0, v5}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->b(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    invoke-virtual {v0, v3}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->e(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    iget v1, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->a:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->d(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->b:I

    invoke-virtual {v0, p0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->f(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->a()Landroidx/camera/video/internal/audio/AudioSettings;

    move-result-object p0

    return-object p0
.end method
