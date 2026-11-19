.class public final synthetic Lcom/perfectcorp/perfectlib/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/p4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/p4;->c:Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/p4;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/p4;->c:Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;

    check-cast p1, Lcom/perfectcorp/perfectlib/SubItemInfo;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-direct {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
