.class final Lcom/perfectcorp/perfectlib/SkuInfo$Palette;
.super Lcom/perfectcorp/perfectlib/SkuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Palette"
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public volatile n:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/SkuInfo;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->m:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->l:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->c:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->g:Ljava/lang/String;

    sget p3, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->m:Ljava/lang/String;

    return-object p0
.end method
