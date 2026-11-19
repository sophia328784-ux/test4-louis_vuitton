.class final Lcom/google/android/gms/internal/measurement/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbe;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzg;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbf;->a:Lcom/google/android/gms/internal/measurement/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbf;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbf;->a:Lcom/google/android/gms/internal/measurement/zzg;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzg;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzao;)V

    return-object p0
.end method
