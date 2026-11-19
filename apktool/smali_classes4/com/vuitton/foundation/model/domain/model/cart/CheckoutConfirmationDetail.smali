.class public final Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;",
        "",
        "",
        "orderId",
        "cartId",
        "email",
        "Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;",
        "shippingMethod",
        "Lcom/vuitton/foundation/model/domain/model/profile/Address;",
        "deliveryAddress",
        "billingAddress",
        "",
        "Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;",
        "items",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;",
        "cartPriceInfo",
        "",
        "shoppingBag",
        "giftMessage",
        "paymentMethod",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;",
        "timeline",
        "Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;",
        "perfumeSamples",
        "isClickAndCollect",
        "displayName",
        "displayDeliveryAddress",
        "displayBillingAddress",
        "cid",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;Lcom/vuitton/foundation/model/domain/model/profile/Address;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

.field public final e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

.field public final f:Lcom/vuitton/foundation/model/domain/model/profile/Address;

.field public final g:Ljava/util/List;

.field public final h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

.field public final m:Ljava/util/List;

.field public final n:Z

.field public final o:Ljava/lang/String;

.field public final p:Ljava/util/List;

.field public final q:Ljava/util/List;

.field public final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;Lcom/vuitton/foundation/model/domain/model/profile/Address;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;",
            "Lcom/vuitton/foundation/model/domain/model/profile/Address;",
            "Lcom/vuitton/foundation/model/domain/model/profile/Address;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->f:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iput-boolean p9, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->i:Z

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->m:Ljava/util/List;

    iput-boolean p14, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->n:Z

    iput-object p15, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->p:Ljava/util/List;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->q:Ljava/util/List;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->r:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;Lcom/vuitton/foundation/model/domain/model/profile/Address;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p19

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    .line 88
    const-string v0, ""

    move-object/from16 v16, v0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    goto :goto_1

    :cond_0
    move-object/from16 v16, p15

    goto :goto_0

    .line 89
    :goto_1
    invoke-direct/range {v1 .. v19}, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;Lcom/vuitton/foundation/model/domain/model/profile/Address;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->f:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->f:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->m:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->m:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->n:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->p:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->p:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->q:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->q:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->r:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/profile/Address;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->f:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/profile/Address;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->i:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->j:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->m:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->n:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->o:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->p:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->q:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->r:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", cartId="

    const-string v1, ", email="

    const-string v2, "CheckoutConfirmationDetail(orderId="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", billingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->f:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cartPriceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shoppingBag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", giftMessage="

    const-string v2, ", paymentMethod="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->j:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->i:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", perfumeSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isClickAndCollect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayDeliveryAddress="

    const-string v2, ", displayBillingAddress="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->p:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->r:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
