.class final Lcom/perfectcorp/perfectlib/VtoDetail$PatternMajor;
.super Lcom/perfectcorp/perfectlib/VtoDetail;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternMajor"
.end annotation


# virtual methods
.method public final getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 4

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "skuInfo can\'t be null"

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getPalettes] start"

    const/4 v2, 0x3

    const-string v3, "VtoDetailPatternMajor"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v0, v2, :cond_0

    new-instance p0, Ly51;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ly51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;->getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V

    return-void
.end method

.method public final getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 3

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getPatterns] start"

    const/4 v1, 0x3

    const-string v2, "VtoDetailPatternMajor"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/g1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getWearingStyles(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 2

    const-string p0, "callback can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x3

    const-string v0, "VtoDetailPatternMajor"

    const-string v1, "[getWearingStyles] start"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ly51;

    invoke-direct {v0, p1, p0}, Ly51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
