.class public final enum Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public static final enum CACHE_FIRST_THEN_UPDATE:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public static final enum CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public static final enum UPDATE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    const-string v1, "CACHE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    const-string v2, "CACHE_FIRST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v2, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    const-string v3, "UPDATE_FIRST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->UPDATE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v3, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    const-string v4, "CACHE_FIRST_THEN_UPDATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST_THEN_UPDATE:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    filled-new-array {v0, v1, v2, v3}, [Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->a:[Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->a:[Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    return-object v0
.end method
