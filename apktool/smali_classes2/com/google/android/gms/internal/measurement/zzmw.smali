.class public final Lcom/google/android/gms/internal/measurement/zzmw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/zzmw;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableSortedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->D()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmw;-><init>(Lcom/google/common/collect/ImmutableSortedSet;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmw;->b:Lcom/google/android/gms/internal/measurement/zzmw;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/zzacv;)Lcom/google/android/gms/internal/measurement/zzmw;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->G()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->A()Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    if-ge v5, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->H()J

    move-result-wide v8

    long-to-int v10, v8

    const/4 v11, 0x3

    ushr-long/2addr v8, v11

    cmp-long v12, v8, v3

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->w()Ljava/lang/String;

    move-result-object v8

    move-wide v15, v3

    move-object/from16 v20, v8

    goto :goto_1

    :cond_0
    add-long/2addr v8, v6

    const-wide v12, 0x1fffffffffffffffL

    cmp-long v12, v8, v12

    if-gtz v12, :cond_7

    move-object/from16 v20, v1

    move-wide v15, v8

    :goto_1
    and-int/lit8 v14, v10, 0x7

    if-eqz v14, :cond_5

    const/4 v8, 0x1

    if-eq v14, v8, :cond_5

    const/4 v8, 0x2

    if-eq v14, v8, :cond_4

    if-eq v14, v11, :cond_3

    const/4 v8, 0x4

    if-eq v14, v8, :cond_2

    const/4 v8, 0x5

    if-ne v14, v8, :cond_1

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzmv;

    const-wide/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->z()[B

    move-result-object v19

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x17

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unrecognized flag type "

    invoke-static {v14, v0, v2}, Ld21;->f(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln91;->c(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzmv;

    const-wide/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->w()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->o()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v17

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzacv;->H()J

    move-result-wide v17

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzmv;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-wide v8, v13, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    cmp-long v10, v8, v3

    if-eqz v10, :cond_6

    move-wide v6, v8

    :cond_6
    invoke-virtual {v2, v13}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v0, "Flag name larger than max size"

    invoke-static {v0}, Ln91;->c(Ljava/lang/String;)V

    return-object v1

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->l()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmw;-><init>(Lcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0

    :cond_9
    const-string v0, "Negative number of flags"

    invoke-static {v0}, Ln91;->c(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzmw;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmw;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result p0

    return p0
.end method
