.class public Lcom/google/android/filament/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Camera;->a:J

    iput p3, p0, Lcom/google/android/filament/Camera;->b:I

    return-void
.end method

.method private static native nLookAt(JDDDDDDDDD)V
.end method

.method private static native nSetCustomProjection(J[D[DDD)V
.end method

.method private static native nSetExposure(JFFF)V
.end method

.method private static native nSetLensProjection(JDDDD)V
.end method

.method private static native nSetModelMatrix(J[F)V
.end method

.method private static native nSetScaling(JDD)V
.end method

.method private static native nSetShift(JDD)V
.end method


# virtual methods
.method public final a()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/filament/Camera;->a:J

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    return-wide v2

    :cond_0
    const-string p0, "Calling method on destroyed Camera"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(DDDDDDDDD)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    invoke-static/range {v0 .. v19}, Lcom/google/android/filament/Camera;->nLookAt(JDDDDDDDDD)V

    return-void
.end method

.method public final c([D)V
    .locals 10

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v2

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    move-object v5, p1

    move-object v4, p1

    invoke-static/range {v2 .. v9}, Lcom/google/android/filament/Camera;->nSetCustomProjection(J[D[DDD)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Array length must be at least 16"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(FFF)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/Camera;->nSetExposure(JFFF)V

    return-void
.end method

.method public final e(DDDD)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/filament/Camera;->nSetLensProjection(JDDDD)V

    return-void
.end method

.method public final f([F)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nSetModelMatrix(J[F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Array length must be at least 16"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(DD)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Camera;->nSetScaling(JDD)V

    return-void
.end method

.method public final h(D)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide v0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Camera;->nSetShift(JDD)V

    return-void
.end method
