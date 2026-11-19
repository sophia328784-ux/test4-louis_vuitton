.class public final Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final brandName:Ljava/lang/String;

.field public final customInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field public final detailUrl:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field public final productId:Ljava/lang/String;

.field public final productName:Ljava/lang/String;

.field public final productType:Ljava/lang/String;

.field public final upc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productType:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->upc:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productName:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->brandName:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->detailUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->customInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method
