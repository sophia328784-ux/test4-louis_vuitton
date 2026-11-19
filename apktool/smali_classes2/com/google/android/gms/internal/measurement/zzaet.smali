.class final Lcom/google/android/gms/internal/measurement/zzaet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/zzaer;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzaes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaet;->b:Lcom/google/android/gms/internal/measurement/zzaer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaes;

    sget v1, Lcom/google/android/gms/internal/measurement/zzacf;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzafa;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzado;->a:Lcom/google/android/gms/internal/measurement/zzado;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzaet;->b:Lcom/google/android/gms/internal/measurement/zzaer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaes;-><init>([Lcom/google/android/gms/internal/measurement/zzafa;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaet;->a:Lcom/google/android/gms/internal/measurement/zzaes;

    return-void
.end method
