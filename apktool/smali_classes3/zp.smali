.class public final synthetic Lzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lzp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lzp;->b:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->c()Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    move-result-object p0

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->a:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    if-eq p0, v1, :cond_1

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->c()Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
