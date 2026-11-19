.class final Lcom/google/android/gms/internal/clearcut/zzdu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/clearcut/zzef<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/zzdo;

.field public final b:Lcom/google/android/gms/internal/clearcut/zzex;

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/clearcut/zzbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p3, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->d:Lcom/google/android/gms/internal/clearcut/zzbu;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->a:Lcom/google/android/gms/internal/clearcut/zzdo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzez;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/clearcut/zzey;->d:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->d:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzby;->g()V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->a:Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/zzdo;->c()Lcom/google/android/gms/internal/clearcut/zzcg$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->h()Lcom/google/android/gms/internal/clearcut/zzcg;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/clearcut/zzcg;Lcom/google/android/gms/internal/clearcut/zzcg;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzez;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/zzey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->d:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p2, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final d(Lcom/google/android/gms/internal/clearcut/zzcg;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzez;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzey;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->d:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzby;->a:Lcom/google/android/gms/internal/clearcut/zzej;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzei;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->d:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzby;->a()Z

    move-result p0

    return p0
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/zzcg;Lcom/google/android/gms/internal/clearcut/zzcg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->b:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->b(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzdu;->d:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->a(Lcom/google/android/gms/internal/clearcut/zzbu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/zzay;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzey;->e:Lcom/google/android/gms/internal/clearcut/zzey;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->b()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_0
    move-object v4, p0

    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v0, p5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    const/16 p0, 0xb

    const/4 p1, 0x2

    if-eq v0, p0, :cond_2

    and-int/lit8 p0, v0, 0x7

    move-object v1, p2

    move v3, p4

    move-object v5, p5

    if-ne p0, p1, :cond_1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzax;->b(I[BIILcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->a(I[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    goto :goto_0

    :cond_2
    move-object v1, p2

    move v3, p4

    move-object v5, p5

    const/4 p0, 0x0

    const/4 p2, 0x0

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget p4, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    ushr-int/lit8 p5, p4, 0x3

    and-int/lit8 v0, p4, 0x7

    if-eq p5, p1, :cond_4

    const/4 v2, 0x3

    if-eq p5, v2, :cond_3

    goto :goto_2

    :cond_3
    if-ne v0, p1, :cond_5

    invoke-static {v1, p3, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->i([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-object p2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/zzbb;

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {v1, p3, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget p0, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 p5, 0xc

    if-eq p4, p5, :cond_7

    invoke-static {p4, v1, p3, v3, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->a(I[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    goto :goto_1

    :cond_6
    move p3, v2

    :cond_7
    if-eqz p2, :cond_8

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    invoke-virtual {v4, p0, p2}, Lcom/google/android/gms/internal/clearcut/zzey;->a(ILjava/lang/Object;)V

    :cond_8
    move-object p2, v1

    move p4, v3

    move-object p5, v5

    goto :goto_0

    :cond_9
    move v3, p4

    if-ne p3, v3, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->b()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0
.end method
