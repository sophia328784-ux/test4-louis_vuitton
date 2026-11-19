.class public final Lcom/perfectcorp/perfectlib/SkuSetItemInfo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ProductInfo;

.field public final b:Lcom/perfectcorp/perfectlib/SkuInfo;

.field public final c:I

.field public final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->c(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object p1

    iget p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteColorIndex:I

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->c(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object p1

    iget p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteColorIndex:I

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->c:I

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->c:I

    return p0
.end method

.method public final getPatternInfo()Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;

    return-object p0
.end method

.method public final getProductInfo()Lcom/perfectcorp/perfectlib/ProductInfo;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    return-object p0
.end method

.method public final getSkuInfo()Lcom/perfectcorp/perfectlib/SkuInfo;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuSetItemInfo;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    return-object p0
.end method
