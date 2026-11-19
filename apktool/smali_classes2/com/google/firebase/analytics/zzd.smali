.class final Lcom/google/firebase/analytics/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzlk;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    return-void
.end method


# virtual methods
.method public final J()J
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzez;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzez;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final M()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzez;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzez;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzez;->l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzez;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->y(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzez;->l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->x(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->e(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzez;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/zzjp;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->n(Lcom/google/android/gms/measurement/internal/zzjp;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzez;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzez;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzez;->o(Lcom/google/android/gms/measurement/internal/zzjq;)V

    return-void
.end method
