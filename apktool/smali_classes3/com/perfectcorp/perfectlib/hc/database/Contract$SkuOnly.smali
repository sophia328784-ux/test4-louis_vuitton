.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuOnly;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkuOnly"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v15, "extraInfo"

    const-string v16, "hidden"

    const-string v1, "skuId"

    const-string v2, "skuGuid"

    const-string v3, "name"

    const-string v4, "longName"

    const-string v5, "isDefault"

    const-string v6, "vendor"

    const-string v7, "startDate"

    const-string v8, "endDate"

    const-string v9, "featureType"

    const-string v10, "featureSubtype"

    const-string v11, "lastModified"

    const-string v12, "info"

    const-string v13, "customerId"

    const-string v14, "isDeleted"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuOnly;->a:[Ljava/lang/String;

    const-string v0, "SkuOnly"

    const-string v1, "skuGuid"

    const-string v2, "index_sku_guid"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuOnly;->b:Ljava/util/List;

    return-void
.end method
