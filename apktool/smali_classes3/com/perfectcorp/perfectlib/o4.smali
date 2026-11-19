.class public final synthetic Lcom/perfectcorp/perfectlib/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/o4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/o4;->c:Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/o4;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o4;->c:Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;->a(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    const-class v2, Lcom/perfectcorp/perfectlib/VtoPalette;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;->d(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/p4;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/perfectcorp/perfectlib/p4;-><init>(Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->cast(Ljava/lang/Class;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    filled-new-array {v1}, [Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
