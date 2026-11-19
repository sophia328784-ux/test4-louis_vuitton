.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;
    }
.end annotation


# instance fields
.field public final customerInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field public final freeSampleURL:Ljava/lang/String;

.field public final hot:Z

.field public final info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

.field public final itemDescription:Ljava/lang/String;

.field public final itemGUID:Ljava/lang/String;

.field public final itemThumbnailURL:Ljava/lang/String;

.field public final moreInfoURL:Ljava/lang/String;

.field public final shadeId:Ljava/lang/String;

.field public final shoppingURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->freeSampleURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->shoppingURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->moreInfoURL:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->hot:Z

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->shadeId:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemThumbnailURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->customerInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method
