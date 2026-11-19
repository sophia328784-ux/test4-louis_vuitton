.class public final Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J,\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
        "<init>",
        "()V",
        "response",
        "",
        "id",
        "",
        "capabilities",
        "",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
        "update",
        "addCapabilities",
        "removeCapabilities",
        "capabilities_release"
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
.method public response(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->CAPABILITIES_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    invoke-static {p1, p2}, Lcom/sightcall/capabilities/datasource/rtcc/RtccMappersKt;->toCapabilitiesResponseEntity(Ljava/lang/String;Ljava/util/List;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, p2, v0}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson$default(Ljava/lang/Object;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->CAPABILITIES_UPDATE:Lcom/sightcall/common/DataChannelAction;

    invoke-static {p1, p2, p3}, Lcom/sightcall/capabilities/datasource/rtcc/RtccMappersKt;->toCapabilitiesUpdateEntity(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2, p3}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson$default(Ljava/lang/Object;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    return-void
.end method
