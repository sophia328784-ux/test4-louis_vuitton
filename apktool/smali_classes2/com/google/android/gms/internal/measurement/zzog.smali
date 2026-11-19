.class public final Lcom/google/android/gms/internal/measurement/zzog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzph;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzom;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznx;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zznx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;Z)V

    return-object v0
.end method
