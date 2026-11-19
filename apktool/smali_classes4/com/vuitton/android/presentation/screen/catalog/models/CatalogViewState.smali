.class public final Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BW\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;",
        "catalog",
        "",
        "Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;",
        "categories",
        "",
        "isLoading",
        "isError",
        "isPlpGiftTutorialsSeen",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/model/common/A11ySettings;",
        "a11ySettings",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

.field public final b:Ljava/util/List;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final g:Lcom/vuitton/android/presentation/model/common/A11ySettings;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 129
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;-><init>(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;",
            ">;ZZZ",
            "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
            "Lcom/vuitton/android/presentation/model/common/A11ySettings;",
            ")V"
        }
    .end annotation

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    .line 123
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->b:Ljava/util/List;

    .line 124
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    .line 125
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->d:Z

    .line 126
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->e:Z

    .line 127
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->f:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    .line 128
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v2, p8, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move/from16 v2, p3

    :goto_2
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v3, p5

    :goto_4
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_5

    new-instance v6, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v19, 0xfff

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v6 .. v20}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_6

    new-instance v5, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p1, v5

    move/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p2, v9

    move/from16 p3, v10

    move/from16 p4, v11

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p8, v5

    :goto_6
    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p6, v3

    move/from16 p5, v4

    move-object/from16 p7, v6

    goto :goto_7

    :cond_6
    move-object/from16 p8, p7

    goto :goto_6

    :goto_7
    invoke-direct/range {p1 .. p8}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;-><init>(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->f:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->f:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->b:Ljava/util/List;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    invoke-static {v1, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->d:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->e:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->f:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CatalogViewState(catalog="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isError="

    const-string v2, ", isPlpGiftTutorialsSeen="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactUsUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->f:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", a11ySettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
