.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;
    }
.end annotation


# instance fields
.field public final backgroundInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

.field public final content_zip:Ljava/lang/String;

.field public final content_zip_md5:Ljava/lang/String;

.field public final customerId:J

.field public final endDate:J

.field public final extraInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;

.field public final hidden:Ljava/lang/String;

.field public final hide:Z

.field public final info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

.field public final isDefault:Z
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;",
            ">;"
        }
    .end annotation
.end field

.field public final lastModified:J

.field public final productId:Ljava/lang/String;

.field public final skuGUID:Ljava/lang/String;

.field public final skuId:J

.field public final skuLongName:Ljava/lang/String;

.field public final skuName:Ljava/lang/String;

.field public final sku_images_dfp_zip:Ljava/lang/String;

.field public final sku_images_dfp_zip_md5:Ljava/lang/String;

.field public final sku_images_room_zip:Ljava/lang/String;

.field public final sku_images_room_zip_md5:Ljava/lang/String;

.field public final sourceCustomerId:Ljava/lang/String;

.field public final sourceVendor:Ljava/lang/String;

.field public final startDate:J

.field public final statusCode:I

.field public final subItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final subType:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final vendor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuId:J

    const-string v2, ""

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subType:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuName:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuLongName:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->vendor:Ljava/lang/String;

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->startDate:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->endDate:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->lastModified:J

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subItems:Ljava/util/List;

    const/4 v3, -0x1

    iput v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->statusCode:I

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->customerId:J

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sourceCustomerId:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sourceVendor:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->hide:Z

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->extraInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->isDefault:Z

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_room_zip:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_dfp_zip:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip_md5:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_room_zip_md5:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_dfp_zip_md5:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->hidden:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->backgroundInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuId:J

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subType:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuName:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuLongName:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->vendor:Ljava/lang/String;

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->startDate:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->endDate:J

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->c:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->lastModified:J

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subItems:Ljava/util/List;

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->f:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->statusCode:I

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->g:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->customerId:J

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sourceCustomerId:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sourceVendor:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->productId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->hide:Z

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->k:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->extraInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->isDefault:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_room_zip:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_dfp_zip:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip_md5:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_room_zip_md5:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_dfp_zip_md5:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->hidden:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->s:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->backgroundInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    return-object p0
.end method
