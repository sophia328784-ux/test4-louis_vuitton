.class public abstract Lcom/vuitton/android/data/dto/avatar/mapper/AvatarMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;)Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;->a:Ljava/util/List;

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

    check-cast v3, Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;->c:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;

    iget-boolean v8, v3, Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;->b:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v10, v7, Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v7

    invoke-direct {v9, v10, v7, v8}, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Z)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;

    invoke-direct {v3, v4, v6}, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;->b:Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Z)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    invoke-direct {p0, v1, v0}, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;)V

    return-object p0
.end method
