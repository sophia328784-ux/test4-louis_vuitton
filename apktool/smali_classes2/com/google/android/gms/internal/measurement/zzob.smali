.class final Lcom/google/android/gms/internal/measurement/zzob;
.super Lcom/google/android/gms/internal/measurement/zzoc;
.source "SourceFile"


# instance fields
.field public final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzof;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/zzob;->g:J

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzob;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
