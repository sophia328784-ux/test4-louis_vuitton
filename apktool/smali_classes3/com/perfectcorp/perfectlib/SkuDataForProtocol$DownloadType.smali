.class public final enum Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

.field public static final enum b:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

.field public static final enum c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    const-string v1, "IDC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->a:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->b:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    const-string v1, "IDC_FILES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    return-void
.end method
