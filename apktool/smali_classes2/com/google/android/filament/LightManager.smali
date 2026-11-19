.class public Lcom/google/android/filament/LightManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/LightManager$Type;,
        Lcom/google/android/filament/LightManager$Builder;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/LightManager$Type;->values()[Lcom/google/android/filament/LightManager$Type;

    return-void
.end method

.method public static bridge synthetic a(IJJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/google/android/filament/LightManager;->nBuilderBuild(JJI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/filament/LightManager;->nBuilderCastShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic c(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderColor(JFFF)V

    return-void
.end method

.method public static bridge synthetic d(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderDirection(JFFF)V

    return-void
.end method

.method public static bridge synthetic e(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/LightManager;->nBuilderFalloff(JF)V

    return-void
.end method

.method public static bridge synthetic f(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/LightManager;->nBuilderIntensity(JF)V

    return-void
.end method

.method public static bridge synthetic g(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/LightManager;->nBuilderIntensityCandela(JF)V

    return-void
.end method

.method public static bridge synthetic h(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderPosition(JFFF)V

    return-void
.end method

.method public static bridge synthetic i(FFJ)V
    .locals 0

    invoke-static {p2, p3, p0, p1}, Lcom/google/android/filament/LightManager;->nBuilderSpotLightCone(JFF)V

    return-void
.end method

.method public static bridge synthetic j(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/LightManager;->nCreateBuilder(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic k(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/LightManager;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJI)Z
.end method

.method private static native nBuilderCastShadows(JZ)V
.end method

.method private static native nBuilderColor(JFFF)V
.end method

.method private static native nBuilderDirection(JFFF)V
.end method

.method private static native nBuilderFalloff(JF)V
.end method

.method private static native nBuilderIntensity(JF)V
.end method

.method private static native nBuilderIntensityCandela(JF)V
.end method

.method private static native nBuilderPosition(JFFF)V
.end method

.method private static native nBuilderSpotLightCone(JFF)V
.end method

.method private static native nCreateBuilder(I)J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nSetColor(JIFFF)V
.end method

.method private static native nSetDirection(JIFFF)V
.end method


# virtual methods
.method public final l(I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetInstance(JI)I

    move-result p0

    return p0
.end method

.method public final m(FFFI)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/LightManager;->nSetColor(JIFFF)V

    return-void
.end method

.method public final n(FFFI)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/LightManager;->nSetDirection(JIFFF)V

    return-void
.end method
