.class public final Lcom/perfectcorp/perfectlib/hc/database/Contract$DownloadImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadImage"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "index_downloaded_image_url"

    const-string v1, "DownloadImage"

    const-string v2, "url"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "index_downloaded_image_reference_id"

    const-string v4, "referenceId"

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "index_downloaded_image_type"

    const-string v6, "type"

    invoke-static {v5, v1, v6}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$DownloadImage;->a:Ljava/util/List;

    const-string v0, "path"

    const-string v1, "size"

    filled-new-array {v2, v0, v4, v6, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$DownloadImage;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
