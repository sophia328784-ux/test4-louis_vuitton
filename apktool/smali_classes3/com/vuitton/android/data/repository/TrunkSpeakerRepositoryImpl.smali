.class public final Lcom/vuitton/android/data/repository/TrunkSpeakerRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/TrunkSpeakerRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;",
        "<init>",
        "()V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;->a:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/TrunkSpeakerRepositoryImpl;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;
    .locals 1

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;->a:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    invoke-direct {p0, p1, p1}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;->b:Ljava/util/List;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method
