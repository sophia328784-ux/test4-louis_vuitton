.class public final Lcom/google/android/gms/internal/measurement/zzagx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzagw;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagr;->d:Lcom/google/android/gms/internal/measurement/zzog;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzob;

    const-string v2, "measurement.service.storage_consent_support_version"

    const-wide/32 v3, 0x31b50

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzob;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;J)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzagx;->a:Lcom/google/android/gms/internal/measurement/zzom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d0()J
    .locals 2

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagx;->a:Lcom/google/android/gms/internal/measurement/zzom;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zznp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznp;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
