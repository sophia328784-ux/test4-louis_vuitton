.class final synthetic Lcom/google/android/gms/internal/location/zzbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/location/zzcf;

.field public final synthetic b:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/location/zzcf;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbq;->a:Lcom/google/android/gms/internal/location/zzcf;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbq;->b:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/location/zzec;

    sget-object v3, Lcom/google/android/gms/internal/location/zzcg;->l:Lcom/google/android/gms/common/api/Api;

    iget-object v3, v0, Lcom/google/android/gms/internal/location/zzbq;->a:Lcom/google/android/gms/internal/location/zzcf;

    iget-object v5, v0, Lcom/google/android/gms/internal/location/zzbq;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/location/zzcf;->d0()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    iget-object v13, v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->b:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/location/zzn;->b:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/location/zzec;->D(Lcom/google/android/gms/common/Feature;)Z

    move-result v4

    iget-object v14, v2, Lcom/google/android/gms/internal/location/zzec;->E:Landroidx/collection/SimpleArrayMap;

    monitor-enter v14

    :try_start_0
    invoke-virtual {v14, v13}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/location/zzdu;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v6, Lcom/google/android/gms/internal/location/zzdu;->b:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/location/zzdq;->a(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    move-object/from16 v18, v6

    move-object v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/location/zzdu;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/location/zzdu;-><init>(Lcom/google/android/gms/internal/location/zzdq;)V

    invoke-virtual {v14, v13, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v0

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzu;

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->a()Ljava/lang/String;

    move-result-object v20

    new-instance v15, Lcom/google/android/gms/internal/location/zzed;

    if-nez v6, :cond_2

    move-object/from16 v17, v7

    goto :goto_2

    :cond_2
    move-object/from16 v17, v6

    :goto_2
    const/16 v16, 0x2

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/location/zzed;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/location/zzdi;

    invoke-direct {v2, v7, v1}, Lcom/google/android/gms/internal/location/zzdi;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v15, v5, v2}, Lcom/google/android/gms/internal/location/zzu;->C(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzu;

    new-instance v17, Lcom/google/android/gms/internal/location/zzef;

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v17

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/location/zzef;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZZZJ)V

    new-instance v3, Lcom/google/android/gms/internal/location/zzdc;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/location/zzdc;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/location/zzv;)V

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->a()Ljava/lang/String;

    move-result-object v22

    new-instance v15, Lcom/google/android/gms/internal/location/zzeh;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x1

    move-object/from16 v19, v0

    move-object/from16 v21, v3

    invoke-direct/range {v15 .. v22}, Lcom/google/android/gms/internal/location/zzeh;-><init>(ILcom/google/android/gms/internal/location/zzef;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v2, v15}, Lcom/google/android/gms/internal/location/zzu;->Y1(Lcom/google/android/gms/internal/location/zzeh;)V

    :goto_3
    monitor-exit v14

    return-void

    :goto_4
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
