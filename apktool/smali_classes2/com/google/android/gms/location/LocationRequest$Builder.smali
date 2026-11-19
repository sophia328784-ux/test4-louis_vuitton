.class public final Lcom/google/android/gms/location/LocationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:F

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:Z

.field public m:Landroid/os/WorkSource;

.field public final n:Lcom/google/android/gms/internal/location/zzd;


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 216
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(J)V

    .line 217
    invoke-static {p1}, Lcom/google/android/gms/location/zzak;->a(I)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->a:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 6

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->c:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->d:J

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->e:J

    const v4, 0x7fffffff

    iput v4, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->f:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->g:F

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->h:Z

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->j:I

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->k:I

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->m:Landroid/os/WorkSource;

    iput-object v1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->n:Lcom/google/android/gms/internal/location/zzd;

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    .line 219
    :goto_0
    const-string v0, "intervalMillis must be greater than or equal to 0"

    invoke-static {v4, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;)V
    .locals 10

    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->W1()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->X1()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    cmp-long v4, v0, v5

    if-ltz v4, :cond_1

    :cond_0
    move v4, v8

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    const-string v9, "minUpdateIntervalMillis must be greater than or equal to 0, or IMPLICIT_MIN_UPDATE_INTERVAL"

    invoke-static {v4, v9}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->c:J

    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->e:J

    cmp-long v4, v0, v5

    if-ltz v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    const-string v9, "maxUpdateDelayMillis must be greater than or equal to 0"

    invoke-static {v4, v9}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->d:J

    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->f:J

    cmp-long v4, v0, v5

    if-lez v4, :cond_3

    move v4, v8

    goto :goto_2

    :cond_3
    move v4, v7

    :goto_2
    const-string v9, "durationMillis must be greater than 0"

    invoke-static {v4, v9}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->e:J

    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->g:I

    if-lez v0, :cond_4

    move v1, v8

    goto :goto_3

    :cond_4
    move v1, v7

    :goto_3
    const-string v4, "maxUpdates must be greater than 0"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->f:I

    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->h:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    move v1, v8

    goto :goto_4

    :cond_5
    move v1, v7

    :goto_4
    const-string v4, "minUpdateDistanceMeters must be greater than or equal to 0"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->g:F

    iget-boolean v0, p1, Lcom/google/android/gms/location/LocationRequest;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->h:Z

    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    :cond_6
    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    cmp-long v2, v0, v5

    if-ltz v2, :cond_8

    :cond_7
    move v2, v8

    goto :goto_5

    :cond_8
    move v2, v7

    :goto_5
    const-string v3, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->i:J

    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->k:I

    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v8, :cond_a

    if-ne v0, v1, :cond_9

    move v2, v1

    :goto_6
    move v3, v8

    goto :goto_7

    :cond_9
    move v2, v0

    move v3, v7

    goto :goto_7

    :cond_a
    move v2, v0

    goto :goto_6

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "granularity %d must be a Granularity.GRANULARITY_* constant"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/common/internal/Preconditions;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->j:I

    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->l:I

    if-eqz v0, :cond_c

    if-eq v0, v8, :cond_c

    if-ne v0, v1, :cond_b

    :goto_8
    move v2, v8

    goto :goto_9

    :cond_b
    move v1, v0

    move v2, v7

    goto :goto_9

    :cond_c
    move v1, v0

    goto :goto_8

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/common/internal/Preconditions;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->k:I

    iget-boolean v0, p1, Lcom/google/android/gms/location/LocationRequest;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->l:Z

    iget-object v0, p1, Lcom/google/android/gms/location/LocationRequest;->n:Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->m:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/google/android/gms/location/LocationRequest;->o:Lcom/google/android/gms/internal/location/zzd;

    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/location/zzd;->g:Lcom/google/android/gms/internal/location/zzd;

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    move v7, v8

    :goto_a
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iput-object p1, p0, Lcom/google/android/gms/location/LocationRequest$Builder;->n:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/LocationRequest;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    move-object v2, v1

    iget v1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->a:I

    move-object v4, v2

    iget-wide v2, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->b:J

    const/16 v5, 0x69

    iget-wide v6, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->c:J

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_0
    iget-wide v8, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->d:J

    iget-wide v10, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->b:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-boolean v14, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->h:Z

    iget-wide v10, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->i:J

    iget v5, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->j:I

    iget v12, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->k:I

    iget-boolean v13, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->l:Z

    new-instance v15, Landroid/os/WorkSource;

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->m:Landroid/os/WorkSource;

    invoke-direct {v15, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iget-object v1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->n:Lcom/google/android/gms/internal/location/zzd;

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-wide v4, v6

    move-wide v6, v8

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v21, v1

    move-object/from16 v20, v15

    move/from16 v1, v16

    move-wide v15, v10

    iget-wide v10, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->e:J

    move-object/from16 v19, v17

    move/from16 v17, v18

    move/from16 v18, v12

    iget v12, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->f:I

    iget v0, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->g:F

    move/from16 v22, v13

    move v13, v0

    move-object/from16 v0, v19

    move/from16 v19, v22

    invoke-direct/range {v0 .. v21}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIIZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zzd;)V

    return-object v0
.end method
