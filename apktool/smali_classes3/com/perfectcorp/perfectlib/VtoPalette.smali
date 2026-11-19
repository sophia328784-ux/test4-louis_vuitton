.class public abstract Lcom/perfectcorp/perfectlib/VtoPalette;
.super Lcom/perfectcorp/perfectlib/VtoObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;,
        Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;,
        Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;
    }
.end annotation


# instance fields
.field public final d:Lcom/perfectcorp/perfectlib/ProductInfo;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/perfectcorp/perfectlib/VtoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->c(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V
    .locals 3

    .line 24
    iget-object v0, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->a:Ljava/lang/String;

    .line 25
    iget-object v1, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->b:Ljava/lang/String;

    .line 26
    iget-object v2, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->d:Ljava/lang/String;

    .line 27
    invoke-direct {p0, v0, v1, v2}, Lcom/perfectcorp/perfectlib/VtoObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p2, p2, Lcom/perfectcorp/perfectlib/SubItemInfo;->c:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    return-void
.end method


# virtual methods
.method public getColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->e:Ljava/util/List;

    return-object p0
.end method

.method public abstract getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/VtoObject$Callback<",
            "Lcom/perfectcorp/perfectlib/VtoPattern;",
            ">;)V"
        }
    .end annotation
.end method
