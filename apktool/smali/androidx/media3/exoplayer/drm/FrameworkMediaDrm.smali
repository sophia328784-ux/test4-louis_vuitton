.class public final Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
    }
.end annotation


# static fields
.field public static final d:Laz;


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Landroid/media/MediaDrm;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laz;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Laz;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->d:Laz;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/C;->c:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->a:Ljava/util/UUID;

    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    iput v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->c:I

    sget-object p0, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ASUS_Z00AD"

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "securityLevel"

    const-string p1, "L3"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([B)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {p0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final c()[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object p0

    return-object p0
.end method

.method public final d([B[B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final e([B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final f()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final g([B)Landroidx/media3/decoder/CryptoConfig;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->a:Ljava/util/UUID;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public final h([B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final i([B[B)[B
    .locals 2

    sget-object v0, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final j(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/drm/c;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/c;-><init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final k([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .locals 13

    const-string v1, "<LA_URL>https://x</LA_URL>"

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->a:Ljava/util/UUID;

    if-eqz p2, :cond_f

    sget-object v3, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    invoke-virtual {v3, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    move v7, v5

    move v8, v7

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v10, v9, Landroidx/media3/common/DrmInitData$SchemeData;->f:[B

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Landroidx/media3/common/DrmInitData$SchemeData;->e:Ljava/lang/String;

    iget-object v12, v3, Landroidx/media3/common/DrmInitData$SchemeData;->e:Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v9, v9, Landroidx/media3/common/DrmInitData$SchemeData;->d:Ljava/lang/String;

    iget-object v11, v3, Landroidx/media3/common/DrmInitData$SchemeData;->d:Ljava/lang/String;

    invoke-static {v9, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v10}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->b([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v9

    if-eqz v9, :cond_3

    array-length v9, v10

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-array v7, v8, [B

    move v8, v5

    move v9, v8

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v10, v10, Landroidx/media3/common/DrmInitData$SchemeData;->f:[B

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v11, v10

    invoke-static {v10, v5, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v8, v3, Landroidx/media3/common/DrmInitData$SchemeData;->c:Ljava/util/UUID;

    iget-object v9, v3, Landroidx/media3/common/DrmInitData$SchemeData;->d:Ljava/lang/String;

    iget-object v3, v3, Landroidx/media3/common/DrmInitData$SchemeData;->e:Ljava/lang/String;

    invoke-direct {v0, v8, v9, v3, v7}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_4

    :cond_3
    move v3, v5

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v8, v7, Landroidx/media3/common/DrmInitData$SchemeData;->f:[B

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->b([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v8

    if-nez v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    iget v8, v8, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->b:I

    :goto_3
    if-ne v8, v6, :cond_5

    move-object v0, v7

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    :goto_4
    iget-object v3, v0, Landroidx/media3/common/DrmInitData$SchemeData;->f:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/media3/common/C;->f:Ljava/util/UUID;

    invoke-virtual {v7, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v2, v3}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->c(Ljava/util/UUID;[B)[B

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v8

    :goto_5
    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v9

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->q()S

    move-result v10

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->q()S

    move-result v11

    if-ne v10, v6, :cond_b

    if-eq v11, v6, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->q()S

    move-result v6

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v6, v12}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "<LA_URL>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    const-string v3, "</DATA>"

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_a

    const-string v4, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v3, v6, v1, v4}, Ln00;->A(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v9, 0x34

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v5, v10

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v5, v11

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_7

    :cond_b
    :goto_6
    const-string v4, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    :goto_7
    invoke-static {v7, v3}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[B)[B

    move-result-object v3

    :cond_c
    invoke-virtual {v7, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "Amazon"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "AFTB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "AFTS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "AFTM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "AFTT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    invoke-static {v2, v3}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->c(Ljava/util/UUID;[B)[B

    move-result-object v4

    if-eqz v4, :cond_e

    move-object v3, v4

    :cond_e
    iget-object v4, v0, Landroidx/media3/common/DrmInitData$SchemeData;->e:Ljava/lang/String;

    move-object v5, v3

    move-object v6, v4

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    :goto_8
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    move-object v4, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    sget-object v4, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, ""

    if-eqz v1, :cond_11

    :cond_10
    :goto_9
    move-object v2, v4

    goto :goto_a

    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v1, v5, :cond_12

    const-string v1, "https://default.url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "version"

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {p0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1.2"

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "aidl-1"

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_9

    :cond_12
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz v0, :cond_13

    iget-object p0, v0, Landroidx/media3/common/DrmInitData$SchemeData;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    move-object v2, p0

    :cond_13
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result p0

    new-instance p1, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {p1, v3, v2, p0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-object p1
.end method

.method public final l([BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->b(Landroid/media/MediaDrm;[BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "setLogSessionId failed."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;[B)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->a:Ljava/util/UUID;

    if-lt v0, v1, :cond_2

    sget-object v0, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    invoke-virtual {v3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    const-string v0, "version"

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v5."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "14."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "15."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "16.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    invoke-virtual {v3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Landroid/media/MediaDrm;->getSecurityLevel([B)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->a(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    invoke-direct {v0, v3, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_2
    sget-object p1, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr p1, v2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/media/MediaCrypto;->release()V

    :cond_3
    return p1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    :cond_4
    throw p0
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
