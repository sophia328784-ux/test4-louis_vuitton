.class public final enum Lcom/perfectcorp/common/downloader/o;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/common/downloader/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/common/downloader/o;

.field public static final enum b:Lcom/perfectcorp/common/downloader/o;


# instance fields
.field final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/common/downloader/o;

    const/4 v1, 0x0

    const-wide v2, 0x2386f26fc10000L

    const-string v4, "FOREGROUND"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/perfectcorp/common/downloader/o;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/perfectcorp/common/downloader/o;->a:Lcom/perfectcorp/common/downloader/o;

    new-instance v0, Lcom/perfectcorp/common/downloader/o;

    const/4 v1, 0x1

    const-wide v2, 0x470de4df820000L

    const-string v4, "BACKGROUND"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/perfectcorp/common/downloader/o;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/perfectcorp/common/downloader/o;->b:Lcom/perfectcorp/common/downloader/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/perfectcorp/common/downloader/o;->c:J

    return-void
.end method
