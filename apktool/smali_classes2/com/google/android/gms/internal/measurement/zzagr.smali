.class public abstract Lcom/google/android/gms/internal/measurement/zzagr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzph;

.field public static final b:Lcom/google/android/gms/internal/measurement/zzom;

.field public static volatile c:Ljava/lang/String;

.field public static final d:Lcom/google/android/gms/internal/measurement/zzog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpj;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzagq;->b:Lcom/google/android/gms/internal/measurement/zzagq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzpj;-><init>(Lcom/google/common/base/Function;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzpi;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzon;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzpj;->a:Lcom/google/common/base/Function;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzpj;->b:Lcom/google/common/collect/ImmutableSet;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzon;-><init>(Lcom/google/common/base/Function;ZLcom/google/common/collect/ImmutableSet;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzpi;->a:Lcom/google/android/gms/internal/measurement/zzon;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzog;

    const-string v2, "com.google.android.gms.measurement"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzog;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzagr;->d:Lcom/google/android/gms/internal/measurement/zzog;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzod;

    const-string v2, "__phenotype_server_token"

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzod;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzagr;->b:Lcom/google/android/gms/internal/measurement/zzom;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzagr;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagr;->b:Lcom/google/android/gms/internal/measurement/zzom;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
