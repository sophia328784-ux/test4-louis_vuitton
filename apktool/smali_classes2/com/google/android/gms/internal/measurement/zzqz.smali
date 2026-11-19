.class final synthetic Lcom/google/android/gms/internal/measurement/zzqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/measurement/zzqz;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqz;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqz;->b:Lcom/google/android/gms/internal/measurement/zzqz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmk;

    iget p0, p1, Lcom/google/android/gms/internal/measurement/zzmk;->b:I

    const/16 v0, 0x734a

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzno;->D()Lcom/google/android/gms/internal/measurement/zznn;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzni;->N()Lcom/google/android/gms/internal/measurement/zznh;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzni;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzni;->P(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzno;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzni;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzno;->E(Lcom/google/android/gms/internal/measurement/zzni;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzno;

    return-object p0

    :cond_0
    throw p1
.end method
