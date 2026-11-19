.class public Lcom/dynatrace/android/agent/metrics/AppVersionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/dynatrace/android/agent/util/SdkVersionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dynatrace/android/agent/util/SdkVersionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;->b:Lcom/dynatrace/android/agent/util/SdkVersionProvider;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/metrics/AppVersion;
    .locals 4

    iget-object v0, p0, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;->b:Lcom/dynatrace/android/agent/util/SdkVersionProvider;

    :try_start_0
    invoke-interface {v0}, Lcom/dynatrace/android/agent/util/SdkVersionProvider;->a()I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x21

    iget-object p0, p0, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;->a:Landroid/content/Context;

    if-lt v1, v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Lcom/dynatrace/android/agent/util/SdkVersionProvider;->a()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    :goto_1
    new-instance v2, Lcom/dynatrace/agent/metrics/AppVersion;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Lcom/dynatrace/agent/metrics/AppVersion;-><init>(JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
