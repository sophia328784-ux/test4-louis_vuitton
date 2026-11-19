.class public final Lcom/google/android/filament/utils/KTX1Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;,
        Lcom/google/android/filament/utils/KTX1Loader$Options;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017J0\u0010\n\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0082 \u00a2\u0006\u0004\u0008\n\u0010\u000bJ(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0082 \u00a2\u0006\u0004\u0008\u000f\u0010\u0010J(\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0082 \u00a2\u0006\u0004\u0008\u0012\u0010\u0013J \u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002H\u0082 \u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/google/android/filament/utils/KTX1Loader;",
        "",
        "",
        "nativeEngine",
        "Ljava/nio/Buffer;",
        "buffer",
        "",
        "remaining",
        "",
        "srgb",
        "nCreateKTXTexture",
        "(JLjava/nio/Buffer;IZ)J",
        "ktxTexture",
        "",
        "sphericalHarmonics",
        "nCreateIndirectLight",
        "(JJ[F)J",
        "outSphericalHarmonics",
        "nGetSphericalHarmonics",
        "(Ljava/nio/Buffer;I[F)Z",
        "nCreateSkybox",
        "(JJ)J",
        "Options",
        "IndirectLightBundle",
        "filament-utils-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/google/android/filament/utils/KTX1Loader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/KTX1Loader;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/filament/utils/KTX1Loader;->a:Lcom/google/android/filament/utils/KTX1Loader;

    return-void
.end method

.method private final native nCreateIndirectLight(JJ[F)J
.end method

.method private final native nCreateKTXTexture(JLjava/nio/Buffer;IZ)J
.end method

.method private final native nCreateSkybox(JJ)J
.end method

.method private final native nGetSphericalHarmonics(Ljava/nio/Buffer;I[F)Z
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Engine;Ljava/nio/ByteBuffer;Lcom/google/android/filament/utils/KTX1Loader$Options;)Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v1

    const/16 p3, 0x1b

    new-array p3, p3, [F

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/filament/utils/KTX1Loader;->nGetSphericalHarmonics(Ljava/nio/Buffer;I[F)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v5, p3

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    if-nez v5, :cond_1

    new-instance p0, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;

    const/4 p1, 0x3

    invoke-direct {p0, v3, v3, p1, v3}, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v7

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    const/4 v11, 0x0

    move-object v6, p0

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/filament/utils/KTX1Loader;->nCreateKTXTexture(JLjava/nio/Buffer;IZ)J

    move-result-wide p0

    move-object v0, v6

    new-instance p2, Lcom/google/android/filament/Texture;

    invoke-direct {p2, p0, p1}, Lcom/google/android/filament/Texture;-><init>(J)V

    invoke-virtual {p2}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/KTX1Loader;->nCreateIndirectLight(JJ[F)J

    move-result-wide p0

    new-instance p3, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;

    new-instance v0, Lcom/google/android/filament/IndirectLight;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/IndirectLight;-><init>(J)V

    invoke-direct {p3, v0, p2}, Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;-><init>(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V

    return-object p3
.end method
