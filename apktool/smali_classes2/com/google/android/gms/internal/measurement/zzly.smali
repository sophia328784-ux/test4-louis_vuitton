.class final synthetic Lcom/google/android/gms/internal/measurement/zzly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/logging/Level;

.field private final synthetic zzb:Ljava/lang/Throwable;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zza:Ljava/util/logging/Level;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzb:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzd:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlx;->a:Lcom/google/android/gms/internal/measurement/zzxs;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zza:Ljava/util/logging/Level;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzxi;->a:Lcom/google/android/gms/internal/measurement/zzzf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzf;->b(Ljava/util/logging/Level;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzf;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzaab;->a:Lcom/google/android/gms/internal/measurement/zzaad;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzaad;->c()Lcom/google/android/gms/internal/measurement/zzaat;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzaat;->a(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    if-nez v3, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxs;->b:Lcom/google/android/gms/internal/measurement/zzxr;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzxq;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzxq;-><init>(Lcom/google/android/gms/internal/measurement/zzxs;Ljava/util/logging/Level;)V

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzb:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyi;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzyi;->P()Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzc:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzd:[Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzyi;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
