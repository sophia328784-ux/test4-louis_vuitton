.class final Lcom/google/android/gms/internal/measurement/zzaap;
.super Lcom/google/android/gms/internal/measurement/zzaat;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/zzaap;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaap;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaav;->a:Lcom/google/android/gms/internal/measurement/zzaat;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaap;-><init>(Lcom/google/android/gms/internal/measurement/zzaat;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaap;->b:Lcom/google/android/gms/internal/measurement/zzaap;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaat;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaat;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaap;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/logging/Level;Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaap;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaat;->a(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/zzabe;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaap;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaat;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaat;->b()Lcom/google/android/gms/internal/measurement/zzabe;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/zzzj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaap;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaat;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaat;->c()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p0

    return-object p0
.end method
