.class final Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;
.super Lcom/perfectcorp/perfectlib/SkuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pattern"
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/SkuInfo;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->k:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;

    iget-object v0, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->m:Ljava/lang/String;

    sget v1, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;->l:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;->eyewear_items:Ljava/util/List;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;->eyewear_attributes:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$b;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$b;->item_guid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$b;->frame_id:Ljava/lang/String;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a$a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a$a;->frame_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a$a;->frame_thumbnail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->c:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object p2, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a$a;->frame_thumbnail:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object p2, Lcom/perfectcorp/perfectlib/PerfectEffect;->EARRINGS:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq p1, p2, :cond_6

    sget-object p2, Lcom/perfectcorp/perfectlib/SkuInfo$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->guid:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/SubItemInfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->thumbnailPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->thumbnailPath:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;->m:Ljava/lang/String;

    return-object p0
.end method
