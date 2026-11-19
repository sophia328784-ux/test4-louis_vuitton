.class interface abstract Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ProductMappingUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SkuToProductMapperInterface"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a:Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface$1;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
