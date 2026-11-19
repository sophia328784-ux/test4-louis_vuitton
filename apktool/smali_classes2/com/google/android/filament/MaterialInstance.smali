.class public Lcom/google/android/filament/MaterialInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/MaterialInstance$FloatElement;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/Material$CullingMode;->values()[Lcom/google/android/filament/Material$CullingMode;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->a:J

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/filament/MaterialInstance;->nGetMaterial(J)J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/filament/MaterialInstance;->a:J

    invoke-static {p2, p3}, Lcom/google/android/filament/MaterialInstance;->nGetMaterial(J)J

    return-void
.end method

.method private static native nGetMaterial(J)J
.end method

.method private static native nSetColorWrite(JZ)V
.end method

.method private static native nSetCullingMode(JJ)V
.end method

.method private static native nSetDepthCulling(JZ)V
.end method

.method private static native nSetDepthWrite(JZ)V
.end method

.method private static native nSetDoubleSided(JZ)V
.end method

.method private static native nSetFloatParameterArray(JLjava/lang/String;I[FII)V
.end method

.method private static native nSetParameterFloat(JLjava/lang/String;F)V
.end method

.method private static native nSetParameterTexture(JLjava/lang/String;JJ)V
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed MaterialInstance"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/MaterialInstance;->nSetColorWrite(JZ)V

    return-void
.end method

.method public final c(Lcom/google/android/filament/Material$CullingMode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/MaterialInstance;->nSetCullingMode(JJ)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/MaterialInstance;->nSetDepthCulling(JZ)V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/MaterialInstance;->nSetDepthWrite(JZ)V

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/MaterialInstance;->nSetDoubleSided(JZ)V

    return-void
.end method

.method public final g(Lcom/google/android/filament/MaterialInstance$FloatElement;[F)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v2, "uvTransform"

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetFloatParameterArray(JLjava/lang/String;I[FII)V

    return-void
.end method

.method public final h(Ljava/lang/String;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat(JLjava/lang/String;F)V

    return-void
.end method

.method public final i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    iget-wide v5, p3, Lcom/google/android/filament/TextureSampler;->a:J

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterTexture(JLjava/lang/String;JJ)V

    return-void
.end method
