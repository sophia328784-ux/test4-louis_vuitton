.class final synthetic Lcom/google/android/gms/internal/measurement/zzmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# virtual methods
.method public final d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjh;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->G()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->H(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->J(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->g:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->M(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->h:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->N(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzacr;->o(II[B)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->I(Lcom/google/android/gms/internal/measurement/zzacr;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->e:[Lcom/google/android/gms/internal/measurement/zzjf;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzjf;->c:[Lcom/google/android/gms/internal/measurement/zzjo;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/zzjo;->h:I

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzjo;->b:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v8, v11, :cond_9

    const/4 v11, 0x2

    if-eq v8, v11, :cond_7

    const/4 v11, 0x3

    if-eq v8, v11, :cond_5

    const/4 v11, 0x4

    if-eq v8, v11, :cond_3

    const/4 v11, 0x5

    if-ne v8, v11, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->G()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->y(Ljava/lang/String;)V

    if-ne v8, v11, :cond_1

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzjo;->g:[B

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    array-length v8, v7

    invoke-static {v1, v8, v7}, Lcom/google/android/gms/internal/measurement/zzacr;->o(II[B)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v7

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v8, v12, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzmi;->N(Lcom/google/android/gms/internal/measurement/zzacr;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzmi;

    goto/16 :goto_2

    :cond_1
    const-string p0, "Not a bytes type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x18

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unrecognized flag type: "

    invoke-static {v8, p0, p1}, Ld21;->f(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->G()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->y(Ljava/lang/String;)V

    if-ne v8, v11, :cond_4

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzjo;->f:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v8, v12, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzmi;->M(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzmi;

    goto :goto_2

    :cond_4
    const-string p0, "Not a String type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->G()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->y(Ljava/lang/String;)V

    if-ne v8, v11, :cond_6

    iget-wide v7, v7, Lcom/google/android/gms/internal/measurement/zzjo;->e:D

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/zzmi;->L(D)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzmi;

    goto :goto_2

    :cond_6
    const-string p0, "Not a double type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->G()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->y(Ljava/lang/String;)V

    if-ne v8, v11, :cond_8

    iget-boolean v7, v7, Lcom/google/android/gms/internal/measurement/zzjo;->d:Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v8, v12, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzmi;->K(Z)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzmi;

    goto :goto_2

    :cond_8
    const-string p0, "Not a boolean type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->G()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->y(Ljava/lang/String;)V

    if-ne v8, v11, :cond_a

    iget-wide v7, v7, Lcom/google/android/gms/internal/measurement/zzjo;->c:J

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/zzmi;->J(J)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzmi;

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v8, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzmg;->K(Lcom/google/android/gms/internal/measurement/zzmi;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    const-string p0, "Not a long type"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_b
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjf;->d:[Ljava/lang/String;

    if-eqz v3, :cond_c

    move v4, v1

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_c

    aget-object v5, v3, v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzmg;->L(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmg;

    return-object p0
.end method
