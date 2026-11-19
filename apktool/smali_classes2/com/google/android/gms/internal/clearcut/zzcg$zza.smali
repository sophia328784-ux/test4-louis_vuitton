.class public abstract Lcom/google/android/gms/internal/clearcut/zzcg$zza;
.super Lcom/google/android/gms/internal/clearcut/zzat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/zzcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/clearcut/zzcg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/clearcut/zzcg$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/clearcut/zzat<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/clearcut/zzcg;

.field public c:Lcom/google/android/gms/internal/clearcut/zzcg;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/zzcg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzat;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->b:Lcom/google/android/gms/internal/clearcut/zzcg;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->d:Z

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->b:Lcom/google/android/gms/internal/clearcut/zzcg;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->h()Lcom/google/android/gms/internal/clearcut/zzcg;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->f(Lcom/google/android/gms/internal/clearcut/zzcg;)V

    return-object v0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/clearcut/zzcg$zza;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/zzcg;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->g()V

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzea;->c:Lcom/google/android/gms/internal/clearcut/zzea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzea;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzef;->f(Lcom/google/android/gms/internal/clearcut/zzcg;Lcom/google/android/gms/internal/clearcut/zzcg;)V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzea;->c:Lcom/google/android/gms/internal/clearcut/zzea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzea;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzef;->f(Lcom/google/android/gms/internal/clearcut/zzcg;Lcom/google/android/gms/internal/clearcut/zzcg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->d:Z

    :cond_0
    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/clearcut/zzcg;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzea;->c:Lcom/google/android/gms/internal/clearcut/zzea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/clearcut/zzea;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzef;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->d:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    return-object p0
.end method

.method public final m()Lcom/google/android/gms/internal/clearcut/zzcg;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->h()Lcom/google/android/gms/internal/clearcut/zzcg;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzea;->c:Lcom/google/android/gms/internal/clearcut/zzea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzea;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzef;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzew;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzew;-><init>(Lcom/google/android/gms/internal/clearcut/zzdo;)V

    throw v0
.end method
