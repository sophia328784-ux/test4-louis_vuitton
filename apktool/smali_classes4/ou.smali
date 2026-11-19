.class public final synthetic Lou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/EnumDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lou;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lou;->c:I

    iput-object p2, p0, Lou;->d:Ljava/lang/Object;

    iput-object p3, p0, Lou;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Lou;->b:I

    iput-object p1, p0, Lou;->d:Ljava/lang/Object;

    iput p2, p0, Lou;->c:I

    iput-object p3, p0, Lou;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 14
    iput p4, p0, Lou;->b:I

    iput-object p1, p0, Lou;->e:Ljava/lang/Object;

    iput-object p2, p0, Lou;->d:Ljava/lang/Object;

    iput p3, p0, Lou;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/Function;Ljava/lang/Object;II)V
    .locals 0

    .line 15
    iput p4, p0, Lou;->b:I

    iput-object p1, p0, Lou;->d:Ljava/lang/Object;

    iput-object p2, p0, Lou;->e:Ljava/lang/Object;

    iput p3, p0, Lou;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lou;->b:I

    iget v1, p0, Lou;->c:I

    iget-object v2, p0, Lou;->e:Ljava/lang/Object;

    iget-object p0, p0, Lou;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->a(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Ljava/lang/Integer;Ljava/lang/String;IZI)Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v2, Ljava/util/List;

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightSkuPagerKt;->a:F

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->c:Landroidx/compose/runtime/MutableState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->e:Z

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    check-cast v2, Lokhttp3/internal/http2/ErrorCode;

    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->C:Lokhttp3/internal/http2/Http2Connection$Companion;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->k(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Ljava/lang/String;

    check-cast v2, Lkotlinx/serialization/internal/EnumDescriptor;

    new-array v0, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->e:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->a:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    new-array v7, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v5, v6, v7}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->f(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :pswitch_6
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
