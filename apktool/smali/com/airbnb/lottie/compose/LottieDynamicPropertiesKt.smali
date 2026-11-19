.class public abstract Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u0007\u00b2\u00063\u0010\u0006\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "T",
        "Lkotlin/Function1;",
        "Lcom/airbnb/lottie/value/LottieFrameInfo;",
        "Lkotlin/ParameterName;",
        "name",
        "frameInfo",
        "callbackState",
        "lottie-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a([Lcom/airbnb/lottie/compose/LottieDynamicProperty;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;
    .locals 2

    const v0, -0x1793fcdf

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const v1, 0x20df0a1

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_1

    :cond_0
    new-instance v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/compose/LottieDynamicProperties;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->J()V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->J()V

    return-object v1
.end method

.method public static final b(Landroid/graphics/ColorFilter;Landroid/graphics/BlendModeColorFilter;[Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;
    .locals 3

    const v0, -0x6a9ace0b

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x602b3379

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {v1, p2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->J()V

    const p2, 0x602b33ac

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/lottie/compose/LottieDynamicProperty;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->J()V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->J()V

    return-object v0
.end method

.method public static final c(Landroid/graphics/ColorFilter;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4f63241a

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const v1, 0x602b37c5

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->J()V

    invoke-static {p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    const p2, 0x602b3842

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    new-instance p2, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$rememberLottieDynamicProperty$2$1;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt$rememberLottieDynamicProperty$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/airbnb/lottie/compose/LottieDynamicProperty;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/model/KeyPath;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->J()V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->J()V

    return-object v0
.end method
