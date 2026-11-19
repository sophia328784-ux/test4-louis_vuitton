.class public abstract Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsMapperKt;
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
.method public static final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->c:Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsDetailMapperKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;->ADVISOR_CURATION:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;->IN_STORE:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;

    :goto_1
    iget-object v6, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->f:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->g:Ljava/lang/String;

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
