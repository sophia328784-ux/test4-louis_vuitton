.class public Lcom/batch/android/BatchDataCollectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchDataCollectionConfig$Editor;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceBrandEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchDataCollectionConfig;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isDeviceModelEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchDataCollectionConfig;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isGeoIpEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchDataCollectionConfig;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeviceBrandEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchDataCollectionConfig;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeviceModelEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchDataCollectionConfig;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGeoIPEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchDataCollectionConfig;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchDataCollectionConfig{geoIPEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/BatchDataCollectionConfig;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceBrandEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/BatchDataCollectionConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModelEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/BatchDataCollectionConfig;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
