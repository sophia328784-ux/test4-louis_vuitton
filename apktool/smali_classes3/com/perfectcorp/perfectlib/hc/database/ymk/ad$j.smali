.class abstract Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Sku"

    const-string v1, "skuGuid"

    const-string v2, "index_sku_guid"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$j;->a:Ljava/util/List;

    return-void
.end method
