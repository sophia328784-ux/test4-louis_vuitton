.class final Lcom/google/android/gms/internal/gtm/zzbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzce;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->f:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzce;->b:Lcom/google/android/gms/internal/gtm/zzbk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->b()V

    return-void
.end method
