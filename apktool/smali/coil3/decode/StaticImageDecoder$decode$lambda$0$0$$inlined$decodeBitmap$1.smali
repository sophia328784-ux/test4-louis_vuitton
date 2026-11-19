.class public final Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Landroid/graphics/ImageDecoder;",
        "decoder",
        "Landroid/graphics/ImageDecoder$ImageInfo;",
        "info",
        "Landroid/graphics/ImageDecoder$Source;",
        "source",
        "",
        "onHeaderDecoded",
        "(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcoil3/decode/StaticImageDecoder;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcoil3/decode/StaticImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->a:Lcoil3/decode/StaticImageDecoder;

    iput-object p2, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object p2, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->a:Lcoil3/decode/StaticImageDecoder;

    iget-object p3, p2, Lcoil3/decode/StaticImageDecoder;->c:Lcoil3/request/Options;

    iget-object p2, p2, Lcoil3/decode/StaticImageDecoder;->c:Lcoil3/request/Options;

    iget-object v2, p3, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    iget-object v3, p3, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    sget-object v4, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    invoke-static {p3, v4}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcoil3/size/Size;

    invoke-static {v0, v1, v2, v3, p3}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    move-result-wide v2

    const/16 p3, 0x20

    shr-long v5, v2, p3

    long-to-int p3, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v3, v2

    const/4 v6, 0x1

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-ne v0, p3, :cond_0

    if-eq v1, v3, :cond_3

    :cond_0
    move-object v2, v4

    iget-object v4, p2, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    invoke-static {p2, v2}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcoil3/size/Size;

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p3, v2, v4

    if-gez p3, :cond_1

    move p3, v6

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-object p0, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez p3, :cond_2

    iget-object p0, p2, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    sget-object p3, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    if-ne p0, p3, :cond_3

    :cond_2
    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->b(D)I

    move-result p0

    int-to-double v0, v1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/math/MathKt;->b(D)I

    move-result p3

    invoke-virtual {p1, p0, p3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_3
    new-instance p0, Li11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    invoke-static {p2}, Lcoil3/request/ImageRequests_androidKt;->b(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object p3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p0, p3, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_4
    move p0, v6

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    invoke-static {p2, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->c:Lcoil3/Extras$Key;

    invoke-static {p2, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorSpace;

    if-eqz p3, :cond_5

    invoke-static {p2, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/ColorSpace;

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_5
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->d:Lcoil3/Extras$Key;

    invoke-static {p2, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    return-void
.end method
