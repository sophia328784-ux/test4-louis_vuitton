.class public abstract Lcom/perfectcorp/perfectlib/hc/database/ymk/af$a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "HairCareProduct"

    const-string v1, "Guid"

    const-string v2, "index_hair_care_product_guid"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/af$a;->a:Ljava/util/List;

    return-void
.end method
