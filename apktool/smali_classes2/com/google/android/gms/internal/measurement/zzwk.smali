.class final Lcom/google/android/gms/internal/measurement/zzwk;
.super Lcom/google/android/gms/internal/measurement/zzwl;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/internal/measurement/zzwl;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzwl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwk;

    new-instance v1, Landroidx/collection/SimpleArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzwl;-><init>(Lcom/google/android/gms/internal/measurement/zzwl;Landroidx/collection/SimpleArrayMap;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwl;->b()Lcom/google/android/gms/internal/measurement/zzwl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzwk;->e:Lcom/google/android/gms/internal/measurement/zzwl;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzwk;

    new-instance v2, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v2}, Landroidx/collection/SimpleArrayMap;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzwl;-><init>(Lcom/google/android/gms/internal/measurement/zzwl;Landroidx/collection/SimpleArrayMap;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/zzwl;->c:Z

    xor-int/lit8 v0, v0, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "Can\'t mutate after handing to trace"

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwl;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v3, "Key already present"

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzwl;->b:Landroidx/collection/SimpleArrayMap;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzwl;->d:Lcom/google/android/gms/internal/measurement/zzwj;

    invoke-virtual {v0, v3, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwl;->b()Lcom/google/android/gms/internal/measurement/zzwl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzwk;->f:Lcom/google/android/gms/internal/measurement/zzwl;

    return-void
.end method
