.class public final Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u007f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;",
        "selectionType",
        "creationDate",
        "clientAdvisorText",
        "shareURL",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;",
        "store",
        "",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;",
        "assets",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;",
        "products",
        "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;",
        "sections",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 124
    const/16 v11, 0x3ff

    const/4 v12, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->a:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->b:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    .line 117
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->d:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->e:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->f:Ljava/lang/String;

    .line 120
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    .line 121
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->h:Ljava/util/List;

    .line 122
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->i:Ljava/util/List;

    .line 123
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;->IN_STORE:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    goto :goto_0

    :cond_2
    move-object v1, p3

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    move-object/from16 v3, p4

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move-object v4, v2

    goto :goto_2

    :cond_4
    move-object/from16 v4, p5

    :goto_2
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v2, p6

    :goto_3
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_6

    new-instance v6, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_6
    move-object/from16 v6, p7

    :goto_4
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_7

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_5

    :cond_7
    move-object/from16 v5, p8

    :goto_5
    and-int/lit16 v7, v0, 0x100

    if-eqz v7, :cond_8

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_6

    :cond_8
    move-object/from16 v7, p9

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 p11, v0

    :goto_7
    move-object p3, p2

    move-object/from16 p4, v1

    move-object/from16 p7, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p9, v5

    move-object/from16 p8, v6

    move-object/from16 p10, v7

    move-object p2, p1

    move-object p1, p0

    goto :goto_8

    :cond_9
    move-object/from16 p11, p10

    goto :goto_7

    :goto_8
    invoke-direct/range {p1 .. p11}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->j:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->j:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->d:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->h:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->i:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->j:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", selectionType="

    const-string v2, "PersonalSelectionsDetailUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientAdvisorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shareURL="

    const-string v2, ", store="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", products="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->j:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
