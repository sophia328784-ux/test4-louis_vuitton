.class final synthetic Lcom/google/android/gms/measurement/internal/zzns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zznt;

.field private final synthetic zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgu;

.field private final synthetic zzd:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zznt;ILcom/google/android/gms/measurement/internal/zzgu;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzns;->zza:Lcom/google/android/gms/measurement/internal/zznt;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzns;->zza:Lcom/google/android/gms/measurement/internal/zznt;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzd:Landroid/content/Intent;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznt;->a:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/measurement/internal/zznp;

    invoke-interface {v3, v1}, Lcom/google/android/gms/measurement/internal/zznp;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/zzic;->s(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/Long;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzic;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v1, "Completed wakeful intent."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    invoke-interface {v3, p0}, Lcom/google/android/gms/measurement/internal/zznp;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
