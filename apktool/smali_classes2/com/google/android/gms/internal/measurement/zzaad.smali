.class public abstract Lcom/google/android/gms/internal/measurement/zzaad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.common.flogger.backend.google.GooglePlatform"

    const-string v1, "com.google.common.flogger.backend.system.DefaultPlatform"

    const-string v2, "com.google.android.gms.internal.measurement.zzaaj"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaad;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/measurement/zzaac;
.end method

.method public abstract b()Lcom/google/android/gms/internal/measurement/zzzf;
.end method

.method public c()Lcom/google/android/gms/internal/measurement/zzaat;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzaav;->a:Lcom/google/android/gms/internal/measurement/zzaat;

    return-object p0
.end method
