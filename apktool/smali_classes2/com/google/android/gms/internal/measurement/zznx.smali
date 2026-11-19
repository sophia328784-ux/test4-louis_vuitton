.class final Lcom/google/android/gms/internal/measurement/zznx;
.super Lcom/google/android/gms/internal/measurement/zzny;
.source "SourceFile"


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzof;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zznx;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zznx;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
