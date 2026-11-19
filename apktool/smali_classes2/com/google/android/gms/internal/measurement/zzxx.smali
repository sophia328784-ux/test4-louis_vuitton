.class public abstract Lcom/google/android/gms/internal/measurement/zzxx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final b:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final c:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final d:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final e:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final g:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final h:Lcom/google/android/gms/internal/measurement/zzyl;

.field public static final i:Lcom/google/android/gms/internal/measurement/zzyl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "cause"

    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->a:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "ratelimit_count"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->b:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "sampling_count"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->c:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "ratelimit_period"

    const-class v4, Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->d:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "skipped"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->e:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxv;

    const-string v1, "group_by"

    const-class v2, Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->f:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "forced"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->g:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxw;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzabe;

    const-string v2, "tags"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->h:Lcom/google/android/gms/internal/measurement/zzyl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "stack_size"

    const-class v2, Lcom/google/android/gms/internal/measurement/zzyv;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->i:Lcom/google/android/gms/internal/measurement/zzyl;

    return-void
.end method
