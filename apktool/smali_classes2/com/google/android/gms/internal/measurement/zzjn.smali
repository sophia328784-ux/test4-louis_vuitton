.class public abstract Lcom/google/android/gms/internal/measurement/zzjn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "commit_to_configuration_v2_api"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjn;->a:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v5, "get_serving_version_api"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    move-wide v5, v2

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "get_experiment_tokens_api"

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v7, "register_flag_update_listener_api"

    const-wide/16 v8, 0x2

    invoke-direct {v3, v7, v8, v9, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzjn;->b:Lcom/google/android/gms/common/Feature;

    move v7, v4

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v8, "sync_after_api"

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    move-wide v8, v5

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "sync_after_for_application_api"

    invoke-direct {v5, v6, v8, v9, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v10, "set_app_wide_properties_api"

    invoke-direct {v6, v10, v8, v9, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    move v10, v7

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v11, "set_runtime_properties_api"

    invoke-direct {v7, v11, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    move-wide v11, v8

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v9, "get_storage_info_api"

    invoke-direct {v8, v9, v11, v12, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzjn;->c:Lcom/google/android/gms/common/Feature;

    filled-new-array/range {v0 .. v8}, [Lcom/google/android/gms/common/Feature;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjn;->d:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
