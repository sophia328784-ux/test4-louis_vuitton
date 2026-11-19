.class public final Lcom/google/android/gms/internal/measurement/zzaev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzaeu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzagm;Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeu;

    const-string v1, ""

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaeu;-><init>(Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzaeu;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzadk;->e(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzaeu;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzadk;->e(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaeu;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaeu;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzadk;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzadk;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
