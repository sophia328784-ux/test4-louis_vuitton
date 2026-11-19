.class public abstract Lcom/perfectcorp/perfectlib/VtoPattern;
.super Lcom/perfectcorp/perfectlib/VtoObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/VtoPattern$PatternEarrings;,
        Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;,
        Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;,
        Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;
    }
.end annotation


# instance fields
.field public final d:Lcom/perfectcorp/perfectlib/ProductInfo;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lcom/perfectcorp/perfectlib/VtoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V
    .locals 2

    .line 18
    iget-object v0, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->a:Ljava/lang/String;

    .line 19
    iget-object v1, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->b:Ljava/lang/String;

    .line 20
    iget-object p2, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->d:Ljava/lang/String;

    .line 21
    invoke-direct {p0, v0, v1, p2}, Lcom/perfectcorp/perfectlib/VtoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    const-string v0, ""

    invoke-direct {p0, p2, v0, p3}, Lcom/perfectcorp/perfectlib/VtoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    return-void
.end method


# virtual methods
.method public abstract getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/VtoObject$Callback<",
            "Lcom/perfectcorp/perfectlib/VtoPalette;",
            ">;)V"
        }
    .end annotation
.end method
