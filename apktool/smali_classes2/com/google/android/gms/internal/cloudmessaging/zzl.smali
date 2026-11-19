.class final synthetic Lcom/google/android/gms/internal/cloudmessaging/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

.field public final synthetic b:Lcom/google/android/gms/cloudmessaging/RegisterRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/cloudmessaging/RegisterRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    iput-object p2, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->b:Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zzd;

    new-instance v0, Lcom/google/android/gms/internal/cloudmessaging/zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/cloudmessaging/zzi;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, v1, Lcom/google/android/gms/common/api/GoogleApi;->a:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p2, v1

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->b:Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    iput p2, p0, Lcom/google/android/gms/cloudmessaging/RegisterRequest;->g:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zze;

    sget p2, Lcom/google/android/gms/internal/cloudmessaging/zzn;->a:I

    sget-object p2, Lcom/google/android/gms/common/api/ComplianceOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance p2, Lcom/google/android/gms/common/api/ComplianceOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/common/api/ComplianceOptions$Builder;-><init>()V

    new-instance p2, Lcom/google/android/gms/common/api/ComplianceOptions;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p2, v2, v2, v1, v3}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    sget-object v2, Lcom/google/android/gms/common/api/ApiMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;-><init>()V

    iput-object p2, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a:Lcom/google/android/gms/common/api/ComplianceOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a()Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;-><init>()V

    iget-object v4, p2, Lcom/google/android/gms/common/api/ApiMetadata;->b:Lcom/google/android/gms/common/api/ComplianceOptions;

    iput-object v4, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a:Lcom/google/android/gms/common/api/ComplianceOptions;

    iget-boolean p2, p2, Lcom/google/android/gms/common/api/ApiMetadata;->d:Z

    iput-boolean p2, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->c:Z

    iput-boolean v3, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->b:Z

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a()Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v4, "com.google.android.gms.cloudmessaging.internal.ICloudMessagingService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v4, Lcom/google/android/gms/internal/cloudmessaging/zzc;->a:I

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, v2, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/common/api/ApiMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/cloudmessaging/zza;->a:Landroid/os/IBinder;

    invoke-interface {p1, v3, v2, p0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p0}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
