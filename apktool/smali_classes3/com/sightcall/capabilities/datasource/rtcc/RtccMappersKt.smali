.class public final Lcom/sightcall/capabilities/datasource/rtcc/RtccMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u001a,\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "toCapabilitiesResponseEntity",
        "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;",
        "id",
        "",
        "caps",
        "",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
        "toCapabilitiesUpdateEntity",
        "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;",
        "add",
        "remove",
        "capabilities_release"
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
.method public static final toCapabilitiesResponseEntity(Ljava/lang/String;Ljava/util/List;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
            ">;)",
            "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;

    invoke-virtual {v1}, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;

    invoke-direct {p1, p0, v0}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public static final toCapabilitiesUpdateEntity(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
            ">;)",
            "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;

    invoke-virtual {v2}, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;

    invoke-virtual {v1}, Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;

    invoke-direct {p2, p0, v0, p1}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method
