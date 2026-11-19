.class final Lcom/google/android/gms/internal/measurement/zzqs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/measurement/zzacr;

.field public final d:Lcom/google/common/collect/ImmutableMap;

.field public final e:Lcom/google/android/gms/internal/measurement/zzqr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzqs;->a:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zznd;->a:Lcom/google/android/gms/internal/measurement/zzmw;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zznd;->b:Lcom/google/android/gms/internal/measurement/zzmq;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmq;->H()Lcom/google/android/gms/internal/measurement/zzmq;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->A()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzqs;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->B()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzqs;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->E()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move-object v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->F()Ljava/util/Map;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->v()Lcom/google/common/collect/ImmutableSet;

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->E()I

    move-result v3

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zznd;->a:Lcom/google/android/gms/internal/measurement/zzmw;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-lez v3, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->F()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    goto/16 :goto_3

    :cond_3
    new-instance v8, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v8}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->O()I

    move-result v10

    add-int/lit8 v11, v10, -0x1

    if-eqz v10, :cond_9

    if-eqz v11, :cond_8

    if-eq v11, v2, :cond_7

    const/4 v10, 0x2

    if-eq v11, v10, :cond_6

    if-eq v11, v6, :cond_5

    const/4 v10, 0x4

    if-ne v11, v10, :cond_4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->F()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacr;->q()[B

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not serialize Flag for override: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->E()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->D()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->C()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmi;->B()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    :cond_9
    throw v5

    :cond_a
    invoke-virtual {v8, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    move/from16 p1, v6

    goto/16 :goto_12

    :cond_c
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->A()Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ": "

    if-eqz v9, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    iget-wide v12, v9, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    if-eqz v11, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_e

    invoke-virtual {v3, v9}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_4

    :cond_e
    instance-of v14, v11, Ljava/lang/String;

    if-eqz v14, :cond_f

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-wide v12, v9, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    const/4 v15, 0x4

    const-wide/16 v18, 0x0

    move-object/from16 v21, v9

    move-object/from16 v20, v11

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v21}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_4

    :cond_f
    instance-of v14, v11, [B

    if-eqz v14, :cond_10

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-wide v12, v9, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    const/4 v15, 0x5

    const-wide/16 v18, 0x0

    move-object/from16 v21, v9

    move-object/from16 v20, v11

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v21}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_4

    :cond_10
    instance-of v14, v11, Ljava/lang/Boolean;

    if-eqz v14, :cond_11

    check-cast v11, Ljava/lang/Boolean;

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-wide v14, v9, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v9

    invoke-direct/range {v12 .. v19}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_4

    :cond_11
    instance-of v14, v11, Ljava/lang/Long;

    if-eqz v14, :cond_12

    new-instance v15, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-wide v12, v9, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v21, 0x0

    const/16 v16, 0x2

    move-object/from16 v22, v9

    move-wide/from16 v17, v12

    invoke-direct/range {v15 .. v22}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto/16 :goto_4

    :cond_12
    instance-of v14, v11, Ljava/lang/Double;

    if-eqz v14, :cond_13

    check-cast v11, Ljava/lang/Double;

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-wide v14, v9, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    const/16 v18, 0x0

    const/4 v13, 0x3

    move-object/from16 v19, v9

    invoke-direct/range {v12 .. v19}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto/16 :goto_4

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    if-eqz v1, :cond_14

    goto :goto_6

    :cond_14
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot serialize override for existing flag "

    invoke-static {v5, v3, v1, v10, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x13

    if-gt v12, v13, :cond_1f

    if-nez v12, :cond_16

    move-object/from16 v19, v5

    move/from16 p1, v6

    :goto_8
    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    goto/16 :goto_f

    :cond_16
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    move-object/from16 v19, v5

    move/from16 p1, v6

    int-to-long v5, v13

    const-wide/16 v16, 0x1

    cmp-long v13, v5, v16

    if-ltz v13, :cond_1e

    const-wide/16 v16, 0x9

    cmp-long v13, v5, v16

    if-lez v13, :cond_17

    goto :goto_8

    :cond_17
    move v13, v2

    :goto_9
    if-ge v13, v12, :cond_1c

    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v16

    add-int/lit8 v2, v16, -0x30

    if-gez v2, :cond_18

    const/16 v16, 0x1

    :goto_a
    const-wide/16 v17, 0x0

    goto :goto_b

    :cond_18
    move/from16 v16, v7

    goto :goto_a

    :goto_b
    const/16 v14, 0x9

    if-le v2, v14, :cond_19

    const/4 v14, 0x1

    goto :goto_c

    :cond_19
    move v14, v7

    :goto_c
    or-int v14, v16, v14

    if-eqz v14, :cond_1b

    :cond_1a
    :goto_d
    move-wide/from16 v23, v17

    goto :goto_f

    :cond_1b
    const-wide/16 v14, 0xa

    mul-long/2addr v5, v14

    int-to-long v14, v2

    add-long/2addr v5, v14

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_9

    :cond_1c
    const-wide/16 v17, 0x0

    cmp-long v2, v5, v17

    if-ltz v2, :cond_1a

    const-wide v12, 0x1fffffffffffffffL

    cmp-long v2, v5, v12

    if-lez v2, :cond_1d

    goto :goto_d

    :cond_1d
    move-wide/from16 v23, v5

    goto :goto_f

    :cond_1e
    :goto_e
    const-wide/16 v17, 0x0

    goto :goto_d

    :cond_1f
    move-object/from16 v19, v5

    move/from16 p1, v6

    goto :goto_e

    :goto_f
    cmp-long v2, v23, v17

    if-nez v2, :cond_20

    move-object/from16 v28, v9

    goto :goto_10

    :cond_20
    move-object/from16 v28, v19

    :goto_10
    instance-of v2, v11, Ljava/lang/String;

    if-eqz v2, :cond_21

    move-object/from16 v17, v11

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzmv;

    const/4 v12, 0x4

    const-wide/16 v15, 0x0

    move-wide/from16 v13, v23

    move-object/from16 v18, v28

    invoke-direct/range {v11 .. v18}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    :goto_11
    move/from16 v6, p1

    move-object/from16 v5, v19

    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_21
    move-object v2, v11

    instance-of v5, v2, [B

    if-eqz v5, :cond_22

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzmv;

    const/4 v12, 0x5

    const-wide/16 v15, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v13, v23

    move-object/from16 v18, v28

    invoke-direct/range {v11 .. v18}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_11

    :cond_22
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_23

    move-object v11, v2

    check-cast v11, Ljava/lang/Boolean;

    new-instance v21, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v21 .. v28}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v21

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_11

    :cond_23
    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_24

    new-instance v21, Lcom/google/android/gms/internal/measurement/zzmv;

    move-object v11, v2

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v22, 0x2

    invoke-direct/range {v21 .. v28}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v21

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_11

    :cond_24
    instance-of v5, v2, Ljava/lang/Double;

    if-eqz v5, :cond_25

    move-object v11, v2

    check-cast v11, Ljava/lang/Double;

    new-instance v21, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v22, 0x3

    invoke-direct/range {v21 .. v28}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(IJJLjava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v21

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Lcom/google/android/gms/internal/measurement/zzmv;)V

    goto :goto_11

    :cond_25
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Cannot serialize override "

    invoke-static {v3, v1, v9, v10, v0}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    throw v19

    :cond_26
    move/from16 p1, v6

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->l()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmw;-><init>(Lcom/google/common/collect/ImmutableSortedSet;)V

    :goto_12
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->a(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzmw;->a:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzmv;->c:Ljava/lang/String;

    if-eqz v5, :cond_27

    goto :goto_14

    :cond_27
    iget-wide v5, v3, Lcom/google/android/gms/internal/measurement/zzmv;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    :goto_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmv;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_13

    :cond_28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->C()Ljava/lang/String;

    move-result-object v1

    const-string v3, "__phenotype_server_token"

    invoke-virtual {v2, v3, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->A()Ljava/lang/String;

    move-result-object v1

    const-string v3, "__phenotype_snapshot_token"

    invoke-virtual {v2, v3, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmq;->D()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "__phenotype_configuration_version"

    invoke-virtual {v2, v3, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqs;->d:Lcom/google/common/collect/ImmutableMap;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqs;->e:Lcom/google/android/gms/internal/measurement/zzqr;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V
    .locals 8

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqs;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->H()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    .line 903
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqs;->b:Ljava/lang/String;

    .line 904
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->B()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqs;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    .line 905
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->v()Lcom/google/common/collect/ImmutableSet;

    .line 906
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->F()I

    move-result v1

    const/4 v2, 0x3

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->a(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 907
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->E()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzqx;

    .line 908
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->N()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    if-eq v6, v5, :cond_3

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    if-eq v6, v2, :cond_1

    const/4 v5, 0x4

    if-eq v6, v5, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->F()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacr;->q()[B

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 910
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 911
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->D()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 912
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->C()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 913
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->B()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    .line 914
    throw p0

    .line 915
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->C()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__phenotype_server_token"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 916
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->A()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__phenotype_snapshot_token"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 917
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->D()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "__phenotype_configuration_version"

    .line 918
    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 919
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 920
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqs;->d:Lcom/google/common/collect/ImmutableMap;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqs;->e:Lcom/google/android/gms/internal/measurement/zzqr;

    return-void
.end method
