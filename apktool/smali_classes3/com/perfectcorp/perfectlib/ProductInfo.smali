.class public final Lcom/perfectcorp/perfectlib/ProductInfo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final c:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->c:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    sget p2, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->f:Ljava/lang/String;

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->g:Ljava/lang/String;

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->h:Ljava/lang/String;

    sget-object p1, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->l:Ljava/lang/String;

    const-class v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    invoke-virtual {p1, p2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    :try_start_0
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;->room:Lcom/perfectcorp/perfectlib/ph/template/o$d;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/o$d;->skus:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/o$f;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/o$f;->sku:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/o$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "this SKU without room info, id="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProductInfo"

    invoke-static {p2, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/template/o$e;->a:Lcom/perfectcorp/perfectlib/ph/template/o$e;

    :goto_0
    const-string p2, "sku_thumbnail"

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/ph/template/o$e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/perfectcorp/perfectlib/ph/template/o$e;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "menu_popup_n"

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/ph/template/o$e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/perfectcorp/perfectlib/ph/template/o$e;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/o$e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/perfectcorp/perfectlib/ph/template/o$e;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->j:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->j:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->j:Ljava/lang/String;

    :goto_1
    sget-object p1, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->m:Ljava/lang/String;

    const-class p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;

    invoke-virtual {p1, p2, p3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->k:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;

    return-void

    :cond_2
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;->eyewearInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 1

    .line 196
    iget-object v0, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    .line 197
    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perfectcorp/perfectlib/ProductInfo;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->BACKGROUND:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->c:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    .line 198
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;->name:Ljava/lang/String;

    .line 200
    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->f:Ljava/lang/String;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;->description:Ljava/lang/String;

    .line 202
    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;->thumbnail:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->j:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->h:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->k:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;

    return-void
.end method


# virtual methods
.method public final getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getLongName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getPerfectEffect()Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0
.end method

.method public final getSkus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkuInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mappedID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", items:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
