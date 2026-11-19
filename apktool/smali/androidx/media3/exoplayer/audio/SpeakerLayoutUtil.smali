.class abstract Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 6

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAudioProfiles()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Laa;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Laa;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioProfile;

    invoke-virtual {v1}, Landroid/media/AudioProfile;->getEncapsulationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioProfile;->getFormat()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->K(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 11

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->a(I)Z

    move-result v0

    sget-object v1, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getSpeakerLayoutChannelMask()I

    move-result p0

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Built-in speaker\'s getSpeakerLayoutChannelMask not usable, defaulting to stereo."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-object v1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_5

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAudioDescriptors()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    return-object p0

    :cond_5
    const/16 v5, 0xc

    if-lt v0, v4, :cond_20

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    if-lt v0, v4, :cond_20

    const/16 v7, 0x1d

    if-ne v6, v7, :cond_20

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    return-object v4

    :cond_6
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAudioDescriptors()Ljava/util/List;

    move-result-object p0

    const/16 v4, 0x22

    if-lt v0, v4, :cond_1f

    if-lt v0, v4, :cond_1e

    if-nez p0, :cond_7

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lv7;->b(Ljava/lang/Object;)Landroid/media/AudioDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v8

    if-ne v8, v3, :cond_8

    invoke-virtual {v7}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x3

    if-eq v8, v9, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid SADB length: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x0

    if-lt v8, v4, :cond_1c

    array-length v8, v7

    if-eq v8, v9, :cond_a

    goto/16 :goto_1

    :cond_a
    aget-byte v8, v7, v10

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_b

    move v10, v5

    :cond_b
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_c

    or-int/lit8 v10, v10, 0x20

    :cond_c
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_d

    or-int/lit8 v10, v10, 0x10

    :cond_d
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_e

    or-int/lit16 v10, v10, 0xc0

    :cond_e
    and-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_f

    or-int/lit16 v10, v10, 0x400

    :cond_f
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_10

    or-int/lit16 v10, v10, 0x300

    :cond_10
    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_11

    const/high16 v8, 0xc000000

    or-int/2addr v10, v8

    :cond_11
    aget-byte v8, v7, v2

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_12

    const v9, 0x14000

    or-int/2addr v10, v9

    :cond_12
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_13

    or-int/lit16 v10, v10, 0x2000

    :cond_13
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_14

    const v9, 0x8000

    or-int/2addr v10, v9

    :cond_14
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_15

    or-int/lit16 v10, v10, 0x1800

    :cond_15
    and-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_16

    const/high16 v9, 0x2000000

    or-int/2addr v10, v9

    :cond_16
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_17

    const/high16 v9, 0x40000

    or-int/2addr v10, v9

    :cond_17
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_18

    or-int/lit16 v10, v10, 0x1800

    :cond_18
    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_19

    const/high16 v8, 0x300000

    or-int/2addr v10, v8

    :cond_19
    aget-byte v7, v7, v3

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_1a

    const/high16 v8, 0xa0000

    or-int/2addr v10, v8

    :cond_1a
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_1b

    const/high16 v8, 0x800000

    or-int/2addr v8, v10

    move v10, v8

    :cond_1b
    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1c

    const/high16 v7, 0x1400000

    or-int/2addr v10, v7

    :cond_1c
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1d
    new-instance v2, Lx5;

    invoke-direct {v2, v3}, Lx5;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_3

    :cond_1e
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v0

    :cond_1f
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    return-object p0

    :cond_20
    if-lt v0, v4, :cond_23

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_22

    if-ne v2, v5, :cond_21

    goto :goto_4

    :cond_21
    if-lt v0, v4, :cond_23

    const/16 v0, 0x16

    if-ne v2, v0, :cond_23

    :cond_22
    :goto_4
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    return-object p0

    :cond_23
    :goto_5
    return-object v1
.end method
