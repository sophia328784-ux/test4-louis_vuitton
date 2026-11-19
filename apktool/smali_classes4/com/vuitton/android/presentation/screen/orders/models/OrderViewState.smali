.class public final Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;",
        "orders",
        "Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;",
        "currentOrder",
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;",
        "currentTransaction",
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;",
        "currentItem",
        "",
        "firstLoading",
        "firstPageError",
        "isInvoiceLoading",
        "isRemoteLoading",
        "nextPageError",
        "emptyScreen",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;",
        "orderFeatureFlags",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;",
        "shortcutsAvailable",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

.field public final b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

.field public final l:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 174
    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;",
            "Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;",
            "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;",
            "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;",
            "ZZZZZZ",
            "Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;",
            "Ljava/util/Set<",
            "+",
            "Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    .line 163
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    .line 164
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    .line 165
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    .line 166
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->e:Z

    .line 167
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->f:Z

    .line 168
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->g:Z

    .line 169
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->h:Z

    .line 170
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->i:Z

    .line 171
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->j:Z

    .line 172
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    .line 173
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->l:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v2, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v6

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v6

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v6

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v6, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    new-instance v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v11

    move/from16 p7, v12

    move-object/from16 p8, v13

    move/from16 p2, v14

    move/from16 p3, v15

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    invoke-direct/range {p1 .. p8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    sget-object v0, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    move-object/from16 p13, v0

    :goto_b
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p5, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p6, v5

    move/from16 p11, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p12, v11

    goto :goto_c

    :cond_b
    move-object/from16 p13, p12

    goto :goto_b

    :goto_c
    invoke-direct/range {p1 .. p13}, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->l:Ljava/util/Set;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->l:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->e:Z

    invoke-static {v1, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->f:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->g:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->h:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->i:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->j:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->l:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderViewState(orders="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstPageError="

    const-string v2, ", isInvoiceLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isRemoteLoading="

    const-string v2, ", nextPageError="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", emptyScreen="

    const-string v2, ", orderFeatureFlags="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->l:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
