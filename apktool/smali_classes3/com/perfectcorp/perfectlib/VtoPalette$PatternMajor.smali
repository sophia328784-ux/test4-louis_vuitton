.class final Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;
.super Lcom/perfectcorp/perfectlib/VtoPalette;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternMajor"
.end annotation


# instance fields
.field public final f:Lcom/perfectcorp/perfectlib/SkuInfo;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lcom/perfectcorp/perfectlib/VtoPalette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;->f:Lcom/perfectcorp/perfectlib/SkuInfo;

    return-void
.end method


# virtual methods
.method public final getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 3

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getPatterns] start"

    const/4 v1, 0x3

    const-string v2, "VtoPalette$PatternMajor"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/g1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
