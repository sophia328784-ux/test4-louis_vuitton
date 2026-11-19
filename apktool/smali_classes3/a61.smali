.class public final synthetic La61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Landroidx/media3/extractor/ExtractorsFactory;
.implements Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;
.implements Landroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;
.implements Lcom/batch/android/h/a$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La61;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic g()Landroid/view/WindowInsets;
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v0
.end method

.method public static synthetic h()V
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static synthetic i(IILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported bitmap!!! config="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", stride="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", width="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic k(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic l(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic n(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic o(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/batch/android/json/JSONException;

    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic p(Ljava/lang/String;F)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic q(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/EnumSet;

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, La61;->b:I

    const/4 v0, 0x3

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Object;)V

    return-object p0

    :sswitch_0
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :sswitch_1
    check-cast p1, Ljava/util/List;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$o;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$o;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$o;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :sswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a$a;->skuSetId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0

    :sswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    const-string p0, "SDKInitHandler"

    const-string v1, "[startInit] update setting by response start"

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "SDKInitHandler"

    const-string v1, "[updateDomainByResponse] start"

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v1, "SDKInitHandler"

    const-string v2, "[updateDomainByResponse] enter critical section"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v1

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->d:Ljava/lang/String;

    const-string v3, "TESTBED_DOMAIN"

    invoke-virtual {v1, v3, v2}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v1

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->e:Ljava/lang/String;

    const-string v3, "PRODUCTION_DOMAIN"

    invoke-virtual {v1, v3, v2}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v1

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->f:Ljava/lang/String;

    const-string v3, "HE_SERVER_DOMAIN"

    invoke-virtual {v1, v3, v2}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->e(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;)V

    const-string v1, "SDKInitHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[updateDomainByResponse] Update domain finished. current domain="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "SDKInitHandler"

    const-string v2, "[updateDomainByResponse] exit critical section"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "SDKInitHandler"

    const-string v1, "[updateDomainByResponse] end"

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "SDKInitHandler"

    const-string v1, "[startInit] update setting by response end"

    invoke-static {v0, p0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :sswitch_4
    check-cast p1, [Ljava/lang/Object;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :sswitch_5
    check-cast p1, Landroid/util/Pair;

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget v1, p0, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    if-lt v1, v2, :cond_2

    const/16 p0, 0x258

    if-ge v1, p0, :cond_1

    const-string p0, "Init SDK with server failed. responseCode="

    invoke-static {v1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/AuthorizationFailedException;

    invoke-direct {p0, v1}, Lcom/perfectcorp/perfectlib/exceptions/AuthorizationFailedException;-><init>(I)V

    throw p0

    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    const-string v1, "InitResponse is null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const-string p1, "SDKInitHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[startInit] Init response. domain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0, p1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    :goto_1
    return-object p0

    :sswitch_6
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->a:Ljava/lang/Object;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    goto :goto_2

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    return-object p0

    :sswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move-result-object p0

    return-object p0

    :sswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_9
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0

    :sswitch_a
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuInfo;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0xd -> :sswitch_6
        0xe -> :sswitch_5
        0xf -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/MeasureScope;)I
    .locals 0

    invoke-interface {p1, p2}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 0

    iget p0, p0, La61;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/batch/android/Batch;->getSessionID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/batch/android/h/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()[Landroidx/media3/extractor/Extractor;
    .locals 2

    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method
