.class public Lcom/google/android/filament/ColorGrading;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/ColorGrading$Builder;
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/ColorGrading;->a:J

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/ColorGrading;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/ColorGrading;->nBuilderContrast(JF)V

    return-void
.end method

.method public static bridge synthetic c(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/ColorGrading;->nBuilderExposure(JF)V

    return-void
.end method

.method public static bridge synthetic d(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/ColorGrading;->nBuilderSaturation(JF)V

    return-void
.end method

.method public static bridge synthetic e(FFJ)V
    .locals 0

    invoke-static {p2, p3, p0, p1}, Lcom/google/android/filament/ColorGrading;->nBuilderWhiteBalance(JFF)V

    return-void
.end method

.method public static bridge synthetic f()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/ColorGrading;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic g(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/ColorGrading;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderContrast(JF)V
.end method

.method private static native nBuilderExposure(JF)V
.end method

.method private static native nBuilderSaturation(JF)V
.end method

.method private static native nBuilderWhiteBalance(JFF)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method
