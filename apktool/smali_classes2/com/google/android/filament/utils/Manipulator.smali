.class public Lcom/google/android/filament/utils/Manipulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Manipulator$Mode;,
        Lcom/google/android/filament/utils/Manipulator$Builder;
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator$Mode;->values()[Lcom/google/android/filament/utils/Manipulator$Mode;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    return-void
.end method

.method public static bridge synthetic a(IJ)J
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/utils/Manipulator;->nBuilderBuild(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderOrbitHomePosition(JFFF)V

    return-void
.end method

.method public static bridge synthetic c(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderTargetPosition(JFFF)V

    return-void
.end method

.method public static bridge synthetic d(IIJ)V
    .locals 0

    invoke-static {p2, p3, p0, p1}, Lcom/google/android/filament/utils/Manipulator;->nBuilderViewport(JII)V

    return-void
.end method

.method public static bridge synthetic e()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JI)J
.end method

.method private static native nBuilderOrbitHomePosition(JFFF)V
.end method

.method private static native nBuilderTargetPosition(JFFF)V
.end method

.method private static native nBuilderViewport(JII)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nDestroyManipulator(J)V
.end method

.method private static native nGetLookAtDouble(J[D[D[D)V
.end method

.method private static native nGrabBegin(JIIZ)V
.end method

.method private static native nGrabEnd(J)V
.end method

.method private static native nGrabUpdate(JII)V
.end method

.method private static native nScroll(JIIF)V
.end method

.method private static native nSetViewport(JII)V
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyManipulator(J)V

    return-void

    :catchall_0
    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyManipulator(J)V

    return-void
.end method

.method public final g([D[D[D)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGetLookAtDouble(J[D[D[D)V

    return-void
.end method

.method public final h(IIZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGrabBegin(JIIZ)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nGrabEnd(J)V

    return-void
.end method

.method public final j(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nGrabUpdate(JII)V

    return-void
.end method

.method public final k(IIF)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nScroll(JIIF)V

    return-void
.end method

.method public final l(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nSetViewport(JII)V

    return-void
.end method
