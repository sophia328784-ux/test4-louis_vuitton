.class public final Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001#B\u00c5\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u0008\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "identifier",
        "Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;",
        "timeline",
        "Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;",
        "priceWithoutVAT",
        "",
        "eligibleForExchange",
        "name",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "",
        "images",
        "mainImage",
        "price",
        "",
        "quantity",
        "color",
        "size",
        "isReturned",
        "eligibleForReturn",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "disclaimer",
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;",
        "customizations",
        "selectedForReturn",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;",
        "returnReason",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier;",
        "fieldsError",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Z

.field public final o:Z

.field public final p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field public final q:Ljava/util/List;

.field public final r:Z

.field public final s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

.field public final t:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    invoke-static/range {p7 .. p7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v10, v1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p8

    :goto_0
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move/from16 v19, v1

    goto :goto_1

    :cond_2
    move/from16 v19, p17

    :goto_1
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v20, v1

    goto :goto_2

    :cond_3
    move-object/from16 v20, p18

    :goto_2
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v21, v0

    goto :goto_3

    :cond_4
    move-object/from16 v21, p19

    :goto_3
    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v2 .. v22}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    .line 99
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    .line 100
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    .line 101
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    .line 103
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    .line 104
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    .line 105
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    .line 106
    iput p10, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    .line 107
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    .line 108
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    .line 109
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    .line 110
    iput-boolean p14, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    .line 111
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-object/from16 p1, p16

    .line 112
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    move/from16 p1, p17

    .line 113
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    move-object/from16 p1, p18

    .line 114
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    move-object/from16 p1, p19

    .line 115
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/collections/EmptyList;)Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget v10, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    iget-boolean v14, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const/16 v20, 0x0

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, p1

    invoke-direct/range {v0 .. v20}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    invoke-static {v0, v3, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransactionItemUiModel(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceWithoutVAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eligibleForExchange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    const-string v2, ", images="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", mainImage="

    const-string v2, ", price="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    invoke-static {v1, v3, v2, v0, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    const-string v2, ", isReturned="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", eligibleForReturn="

    const-string v2, ", disclaimer="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customizations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedForReturn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", returnReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldsError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->h:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->k:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->o:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->p:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->q:Ljava/util/List;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->r:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->s:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->t:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_4

    :cond_4
    return-void
.end method
