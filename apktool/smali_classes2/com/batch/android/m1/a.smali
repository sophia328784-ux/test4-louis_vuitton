.class public Lcom/batch/android/m1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/BatchDataCollectionConfig;Lcom/batch/android/BatchDataCollectionConfig;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
