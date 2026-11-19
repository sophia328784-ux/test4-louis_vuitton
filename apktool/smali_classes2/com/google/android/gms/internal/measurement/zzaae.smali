.class public abstract Lcom/google/android/gms/internal/measurement/zzaae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->a:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaae;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzzt;->a(Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzzm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzzn;-><init>(Lcom/google/android/gms/internal/measurement/zzzm;)V

    return-void
.end method
