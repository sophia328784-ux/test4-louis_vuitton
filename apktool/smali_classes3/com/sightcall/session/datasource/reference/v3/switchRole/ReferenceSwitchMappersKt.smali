.class public final Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002\u001a\u0014\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007*\u00020\u0005H\u0002\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "toReferenceUpdate",
        "Lcom/sightcall/session/ReferenceUpdate;",
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;",
        "toUseCase",
        "Lcom/sightcall/session/ReferenceUpdate$UseCase;",
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;",
        "toButtons",
        "",
        "Lcom/sightcall/session/Reference$Button;",
        "toProvider",
        "Lcom/sightcall/session/ReferenceUpdate$Provider;",
        "session_release"
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
.method private static final toButtons(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getBarButtons()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

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

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes$BarButton;

    invoke-virtual {v1}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes$BarButton;->getRole()Lcom/sightcall/session/datasource/reference/v3/Role;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toButton(Lcom/sightcall/session/datasource/reference/v3/Role;)Lcom/sightcall/session/Reference$Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/sightcall/session/Reference$Button$HangupCall;->INSTANCE:Lcom/sightcall/session/Reference$Button$HangupCall;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final toProvider(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)Lcom/sightcall/session/ReferenceUpdate$Provider;
    .locals 1

    new-instance v0, Lcom/sightcall/session/ReferenceUpdate$Provider;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getChatNotificationDisplayTimeout()Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/session/ReferenceUpdate$Provider;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static final toReferenceUpdate(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;)Lcom/sightcall/session/ReferenceUpdate;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;->getData()Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data;->getAttributes()Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;

    move-result-object p0

    new-instance v0, Lcom/sightcall/session/ReferenceUpdate;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchMappersKt;->toUseCase(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)Lcom/sightcall/session/ReferenceUpdate$UseCase;

    move-result-object v1

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchMappersKt;->toProvider(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)Lcom/sightcall/session/ReferenceUpdate$Provider;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sightcall/session/ReferenceUpdate;-><init>(Lcom/sightcall/session/ReferenceUpdate$UseCase;Lcom/sightcall/session/ReferenceUpdate$Provider;)V

    return-object v0
.end method

.method private static final toUseCase(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)Lcom/sightcall/session/ReferenceUpdate$UseCase;
    .locals 13

    new-instance v0, Lcom/sightcall/session/ReferenceUpdate$UseCase;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getUserRole()Lcom/sightcall/session/datasource/reference/v3/UserRole;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toUserRole(Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/Reference$UserRole;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getStartupCameraSide()Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;

    move-result-object v2

    invoke-static {v2}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toCameraSide(Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;)Lcom/sightcall/session/Reference$CameraSide;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getStartupCamera()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getStartupVideoProfile()Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toVideoProfile(Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;)Lcom/sightcall/session/Reference$VideoProfile;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getStartupPointer()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getStartupMicro()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    xor-int/lit8 v7, v7, 0x1

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchMappersKt;->toButtons(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getBarAlwaysVisible()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getChatNotificationDisplayTimeout()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_4

    :cond_4
    const/16 v10, 0xa

    :goto_4
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getChatQuickBar()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_5

    :cond_5
    move v11, v4

    :goto_5
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;->getStartupCameraUsb()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_6
    move v12, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/session/ReferenceUpdate$UseCase;-><init>(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)V

    return-object v0
.end method
