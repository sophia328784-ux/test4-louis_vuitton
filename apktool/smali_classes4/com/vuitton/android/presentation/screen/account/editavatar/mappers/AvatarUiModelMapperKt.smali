.class public abstract Lcom/vuitton/android/presentation/screen/account/editavatar/mappers/AvatarUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;->b:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v7, v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    new-instance v8, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    iget-object v7, v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->d:Ljava/lang/String;

    iget-boolean v12, v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->c:Z

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->c:Z

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    invoke-direct {p0, v1, v2}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;)V

    return-object p0
.end method
