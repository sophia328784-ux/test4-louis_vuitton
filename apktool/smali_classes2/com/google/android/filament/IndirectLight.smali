.class public Lcom/google/android/filament/IndirectLight;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/IndirectLight$Builder;
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/IndirectLight;->a:J

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/IndirectLight;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/IndirectLight;->nBuilderReflections(JJ)V

    return-void
.end method

.method public static bridge synthetic c()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/IndirectLight;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/IndirectLight;->nDestroyBuilder(J)V

    return-void
.end method

.method public static bridge synthetic e(FJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/IndirectLight;->nIntensity(JF)V

    return-void
.end method

.method public static bridge synthetic f(J[F)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/filament/IndirectLight;->nIrradiance(JI[F)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderReflections(JJ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nIntensity(JF)V
.end method

.method private static native nIrradiance(JI[F)V
.end method
