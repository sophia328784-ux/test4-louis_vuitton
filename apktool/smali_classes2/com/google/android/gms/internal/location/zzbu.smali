.class final synthetic Lcom/google/android/gms/internal/location/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/location/zzbu;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbu;->a:Lcom/google/android/gms/internal/location/zzbu;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    sget-object p0, Lcom/google/android/gms/internal/location/zzcg;->l:Lcom/google/android/gms/common/api/Api;

    new-instance p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/location/LastLocationRequest$Builder;-><init>()V

    new-instance v0, Lcom/google/android/gms/location/LastLocationRequest;

    iget-boolean v4, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->c:Z

    iget-object v5, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->d:Lcom/google/android/gms/internal/location/zzd;

    iget-wide v1, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->a:J

    iget v3, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->b:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LastLocationRequest;-><init>(JIZLcom/google/android/gms/internal/location/zzd;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/location/zzn;->b:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/location/zzec;->D(Lcom/google/android/gms/common/Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance v4, Lcom/google/android/gms/internal/location/zzdj;

    invoke-direct {v4, p2}, Lcom/google/android/gms/internal/location/zzdj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v1, Lcom/google/android/gms/internal/location/zzed;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/location/zzed;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/location/zzu;->I0(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzed;)V

    return-void

    :cond_0
    sget-object p0, Lcom/google/android/gms/location/zzn;->a:Lcom/google/android/gms/common/Feature;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/location/zzec;->D(Lcom/google/android/gms/common/Feature;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    new-instance p1, Lcom/google/android/gms/internal/location/zzdj;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/location/zzdj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/location/zzu;->V0(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzy;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/location/zzu;->j()Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    return-void
.end method
