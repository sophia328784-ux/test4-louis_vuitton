.class public final Lcom/google/android/gms/internal/gtm/zzjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;

.field public final c:I

.field public final d:Lcom/google/android/gms/internal/gtm/zzjg;

.field public final e:Lcom/google/android/gms/internal/gtm/zzkd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->b:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzjh;->c:I

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->d:Lcom/google/android/gms/internal/gtm/zzjg;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzjh;->e:Lcom/google/android/gms/internal/gtm/zzkd;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->c:I

    if-nez p0, :cond_0

    const-string p0, "Network"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Saved file on disk"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "Default resource"

    return-object p0

    :cond_2
    const-string p0, "Resource source is unknown."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->b:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
