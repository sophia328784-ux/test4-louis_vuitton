.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;
    }
.end annotation


# instance fields
.field public final customerInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field public final freeSampleURL:Ljava/lang/String;

.field public final hot:Z

.field public final info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

.field public final itemDescription:Ljava/lang/String;

.field public final itemGUID:Ljava/lang/String;

.field public final itemThumbnailURL:Ljava/lang/String;

.field public final moreInfoURL:Ljava/lang/String;

.field public final shadeId:Ljava/lang/String;

.field public final shoppingURL:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemGUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->freeSampleURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->shoppingURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->moreInfoURL:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->hot:Z

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->shadeId:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;-><init>(I)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->info:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemThumbnailURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->customerInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method
