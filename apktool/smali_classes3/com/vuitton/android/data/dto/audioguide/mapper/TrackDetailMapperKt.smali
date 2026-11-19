.class public abstract Lcom/vuitton/android/data/dto/audioguide/mapper/TrackDetailMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;)Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialSectionMapperKt;->a(Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;

    iget-wide v7, v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    iget-wide v9, v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    iget-object v11, v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;-><init>(JJLjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
