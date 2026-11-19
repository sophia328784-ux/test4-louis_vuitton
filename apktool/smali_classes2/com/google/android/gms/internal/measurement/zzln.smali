.class final synthetic Lcom/google/android/gms/internal/measurement/zzln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmn;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjx;->a:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzkk;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzjx;->a:Lcom/google/android/gms/common/api/Api;

    sget-object v3, Lcom/google/android/gms/common/api/Api$ApiOptions;->j0:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->c:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmn;-><init>(Lcom/google/android/gms/internal/measurement/zzkk;)V

    return-object v0
.end method
