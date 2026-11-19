.class final Lcom/google/android/gms/measurement/internal/zzac;
.super Lcom/google/android/gms/measurement/internal/zzab;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/measurement/zzfn;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/zzad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->h:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzac;->g:Lcom/google/android/gms/internal/measurement/zzfn;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzac;->g:Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->B()I

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zziu;Z)Z
    .locals 15

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahn;->a()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac;->h:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->j:Lcom/google/android/gms/measurement/internal/zzgn;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->D0:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzal;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzac;->g:Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->E()Z

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->F()Z

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->H()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    move v5, v9

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    if-eqz p4, :cond_3

    if-nez v5, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzab;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->B()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const-string v2, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->D()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->F()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->F()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->C()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->C()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzgn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "No number filter for long property. property"

    invoke-virtual {v10, v3, v11}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move v12, v7

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_4
    move v12, v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->G()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->D()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v3

    :try_start_0
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v10, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/zzab;->f(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfl;D)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzab;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_6

    :cond_5
    move v12, v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->J()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->C()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "No number filter for double property. property"

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->K()D

    move-result-wide v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->D()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v3

    :try_start_1
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v6, v7}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v6

    invoke-static {v10, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->f(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfl;D)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzab;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_6

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->D()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->A()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->C()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "No string or number filter defined. property"

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->E()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzpk;->K(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->D()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzpk;->K(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    :catch_2
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    :try_start_2
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6, v13, v14}, Lcom/google/android/gms/measurement/internal/zzab;->f(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzfl;D)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzab;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_6

    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->E()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v6, v10, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfh;->B()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-static {v3, v6, v1}, Lcom/google/android/gms/measurement/internal/zzab;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr;Lcom/google/android/gms/measurement/internal/zzgu;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/google/android/gms/measurement/internal/zzab;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_6

    :cond_c
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "User property has no value, property"

    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :goto_6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    if-nez v6, :cond_d

    const-string v3, "null"

    goto :goto_7

    :cond_d
    move-object v3, v6

    :goto_7
    const-string v7, "Property filter result"

    invoke-virtual {v1, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_e

    return v8

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzab;->c:Ljava/lang/Boolean;

    if-eqz v12, :cond_f

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    if-eqz p4, :cond_10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->E()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzab;->d:Ljava/lang/Boolean;

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->A()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zziu;->B()J

    move-result-wide v5

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->E()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->F()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->F()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzab;->f:Ljava/lang/Long;

    goto :goto_8

    :cond_14
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzab;->e:Ljava/lang/Long;

    :cond_15
    :goto_8
    return v9
.end method
