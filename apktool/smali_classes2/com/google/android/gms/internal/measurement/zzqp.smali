.class final synthetic Lcom/google/android/gms/internal/measurement/zzqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/measurement/zzqp;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqp;->b:Lcom/google/android/gms/internal/measurement/zzqp;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->G()Lcom/google/android/gms/internal/measurement/zzqu;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzqv;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmg;->E()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqx;->G()Lcom/google/android/gms/internal/measurement/zzqw;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzqx;->H(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->O()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    const/4 v3, 0x2

    if-eq v4, v3, :cond_3

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2

    const/4 v3, 0x4

    if-ne v4, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->F()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzqx;->M(Lcom/google/android/gms/internal/measurement/zzacr;)V

    goto :goto_1

    :cond_1
    const-string p0, "No known flag type"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzqx;->L(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->D()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzqx;->K(D)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->C()Z

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzqx;->J(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->B()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzqx;->I(J)V

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzqv;->M(Lcom/google/android/gms/internal/measurement/zzqx;)V

    goto/16 :goto_0

    :cond_6
    throw v5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmg;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzqv;->K(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmg;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzqv;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmg;->F()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzqv;->L(J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmg;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmg;->C()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzqv;->J(Lcom/google/android/gms/internal/measurement/zzacr;)V

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzqv;

    return-object p0
.end method
