.class public Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider$Api31Impl;
    }
.end annotation


# instance fields
.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/util/HashMap;

.field public final g:Landroidx/camera/core/impl/Quirks;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->f:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->d:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "Camera2EncoderProfilesProvider"

    const/4 v0, 0x5

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v0, 0x0

    const/4 p1, -0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->c:Z

    iput p1, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->e:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->g:Landroidx/camera/core/impl/Quirks;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->b(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final b(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->e:I

    invoke-static {v2, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v3

    :cond_1
    iget-object v2, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object v0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "Camera2EncoderProfilesProvider"

    const/16 v7, 0x1f

    if-lt v2, v7, :cond_6

    iget-object v2, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider$Api31Impl;->a(ILjava/lang/String;)Landroid/media/EncoderProfiles;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v3

    goto/16 :goto_7

    :cond_4
    const-class v8, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;

    sget-object v9, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v9, v8}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {v4, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-static {v2}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->a(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    invoke-static {v5, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_6
    :goto_1
    :try_start_1
    iget v2, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->e:I

    invoke-static {v2, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v5, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_7

    const-string v6, "EncoderProfilesProxyCompat"

    invoke-static {v5, v6}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_7
    iget v6, v2, Landroid/media/CamcorderProfile;->duration:I

    iget v7, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v9, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    packed-switch v9, :pswitch_data_0

    const-string v10, "audio/none"

    goto :goto_3

    :pswitch_0
    const-string v10, "audio/opus"

    goto :goto_3

    :pswitch_1
    const-string v10, "audio/vorbis"

    goto :goto_3

    :pswitch_2
    const-string v10, "audio/mp4a-latm"

    goto :goto_3

    :pswitch_3
    const-string v10, "audio/amr-wb"

    goto :goto_3

    :pswitch_4
    const-string v10, "audio/3gpp"

    :goto_3
    iget v11, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    iget v12, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v13, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    if-eq v9, v4, :cond_a

    const/4 v14, 0x4

    if-eq v9, v14, :cond_8

    if-eq v9, v5, :cond_9

    const/4 v5, -0x1

    :cond_8
    :goto_4
    move v14, v5

    goto :goto_5

    :cond_9
    const/16 v5, 0x27

    goto :goto_4

    :cond_a
    const/4 v5, 0x2

    goto :goto_4

    :goto_5
    invoke-static/range {v9 .. v14}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->a(ILjava/lang/String;IIII)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v9, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    packed-switch v9, :pswitch_data_1

    const-string v10, "video/none"

    goto :goto_6

    :pswitch_5
    const-string v10, "video/av01"

    goto :goto_6

    :pswitch_6
    const-string v10, "video/dolby-vision"

    goto :goto_6

    :pswitch_7
    const-string v10, "video/x-vnd.on2.vp9"

    goto :goto_6

    :pswitch_8
    const-string v10, "video/hevc"

    goto :goto_6

    :pswitch_9
    const-string v10, "video/x-vnd.on2.vp8"

    goto :goto_6

    :pswitch_a
    const-string v10, "video/mp4v-es"

    goto :goto_6

    :pswitch_b
    const-string v10, "video/avc"

    goto :goto_6

    :pswitch_c
    const-string v10, "video/3gpp"

    :goto_6
    iget v11, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v12, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget v13, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v14, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x8

    invoke-static/range {v9 .. v18}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->a(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v5, v6, v7}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->e(Ljava/util/List;Ljava/util/List;II)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_12

    iget-object v5, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->g:Landroidx/camera/core/impl/Quirks;

    const-class v6, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    const/4 v6, 0x1

    if-nez v5, :cond_b

    :goto_8
    move v4, v6

    goto :goto_a

    :cond_b
    invoke-interface {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    iget-object v8, v5, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;->b:Ljava/util/List;

    if-nez v8, :cond_e

    iget-object v8, v5, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;->a:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->f(I)[Landroid/util/Size;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/util/Size;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_9

    :cond_d
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_9
    iput-object v8, v5, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;->b:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v8, "CamcorderProfileResolutionQuirk"

    invoke-static {v4, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v5, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;->b:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->k()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_a
    if-nez v4, :cond_12

    if-ne v1, v6, :cond_10

    sget-object v2, Landroidx/camera/core/impl/EncoderProfilesProvider;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->b(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v4

    if-eqz v4, :cond_f

    :goto_b
    move-object v3, v4

    goto :goto_d

    :cond_10
    if-nez v1, :cond_13

    sget-object v2, Landroidx/camera/core/impl/EncoderProfilesProvider;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_c
    if-ltz v2, :cond_13

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->b(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v4

    if-eqz v4, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_12
    move-object v3, v2

    :cond_13
    :goto_d
    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2EncoderProfilesProvider;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
