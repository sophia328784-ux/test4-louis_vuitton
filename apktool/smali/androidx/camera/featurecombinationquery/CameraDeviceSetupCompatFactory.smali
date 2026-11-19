.class public Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;

.field public final b:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;

    invoke-direct {v0, p1}, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->b:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v5, v1, v3

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    const-string p0, "Multiple Play Services CameraDeviceSetupCompat implementations found in the manifest."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Failed to instantiate Play Services CameraDeviceSetupCompat implementation"

    invoke-static {p1, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :goto_2
    iput-object v0, p0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->a:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->a:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;->a(Ljava/lang/String;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->b:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatProvider;

    if-eqz p0, :cond_1

    :try_start_0
    check-cast p0, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;

    invoke-virtual {p0, p1}, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;->a(Ljava/lang/String;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    new-instance p0, Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;

    invoke-direct {p0, v0}, Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
