.class public abstract Lcom/vuitton/android/presentation/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/PermissionUtils;",
        "",
        "PermissionListener",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b:[Ljava/lang/String;

    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/utils/PermissionUtils;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ToastKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x9f3

    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    new-instance v21, Landroid/os/WorkSource;

    invoke-direct/range {v21 .. v21}, Landroid/os/WorkSource;-><init>()V

    const/16 v22, 0x0

    const/16 v2, 0x66

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0x927c0

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/32 v16, 0x36ee80

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v11, v9

    invoke-direct/range {v1 .. v22}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIIZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zzd;)V

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/google/android/gms/location/zzak;->a(I)V

    iput v2, v1, Lcom/google/android/gms/location/LocationRequest;->b:I

    new-instance v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    iget-object v3, v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    new-instance v4, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-boolean v2, v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/ArrayList;ZZ)V

    sget v2, Lcom/google/android/gms/location/LocationServices;->a:I

    new-instance v2, Lcom/google/android/gms/internal/location/zzdb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/location/zzdb;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/location/zzdb;->j(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Ltb0;

    const/16 v4, 0x19

    move-object/from16 v6, p1

    invoke-direct {v3, v6, v4}, Ltb0;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lln0;

    invoke-direct {v4, v3, v5}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v3, Lln0;

    invoke-direct {v3, v0, v1}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static c(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b:[Ljava/lang/String;

    const/16 v1, 0x5cf

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static e(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
