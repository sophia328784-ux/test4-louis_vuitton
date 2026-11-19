.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;,
        Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;,
        Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;
    }
.end annotation


# instance fields
.field private final content_zip:Ljava/lang/String;

.field private final content_zip_md5:Ljava/lang/String;

.field private final customerId:J

.field private final endDate:J

.field private final extraInfo:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;

.field private final hidden:Ljava/lang/String;

.field private final hide:Z

.field private final info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;

.field private final isDefault:Z
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;",
            ">;"
        }
    .end annotation
.end field

.field private final lastModified:J

.field private final productId:Ljava/lang/String;

.field private final skuGUID:Ljava/lang/String;

.field private final skuId:J

.field private final skuLongName:Ljava/lang/String;

.field private final skuName:Ljava/lang/String;

.field private final sku_images_dfp_zip:Ljava/lang/String;

.field private final sku_images_dfp_zip_md5:Ljava/lang/String;

.field private final sku_images_room_zip:Ljava/lang/String;

.field private final sku_images_room_zip_md5:Ljava/lang/String;

.field private final sourceCustomerId:Ljava/lang/String;

.field private final sourceVendor:Ljava/lang/String;

.field private final startDate:J

.field private final statusCode:I

.field private final subItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subType:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final vendor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuId:J

    const-string v2, ""

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->subType:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuName:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuLongName:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuGUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->vendor:Ljava/lang/String;

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->startDate:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->endDate:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->lastModified:J

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->items:Ljava/util/List;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->subItems:Ljava/util/List;

    const/4 v3, -0x1

    iput v3, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->statusCode:I

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->customerId:J

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->sourceCustomerId:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->sourceVendor:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->hide:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;

    new-instance v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->extraInfo:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->isDefault:Z

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->content_zip:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->sku_images_room_zip:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->sku_images_dfp_zip:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->content_zip_md5:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->sku_images_room_zip_md5:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->sku_images_dfp_zip_md5:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->hidden:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->items:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuGUID:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->type:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuId:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->subType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->skuLongName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->vendor:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->startDate:J

    return-wide v0
.end method

.method public static synthetic j(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->endDate:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->lastModified:J

    return-wide v0
.end method

.method public static synthetic l(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->customerId:J

    return-wide v0
.end method

.method public static synthetic m(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;

    return-object p0
.end method

.method public static synthetic n(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->extraInfo:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;

    return-object p0
.end method

.method public static synthetic o(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->hidden:Ljava/lang/String;

    return-object p0
.end method
