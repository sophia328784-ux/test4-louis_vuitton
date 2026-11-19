.class public final Lcom/sightcall/universal/agent/registration/NewRegistrationMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003\u00a8\u0006\t"
    }
    d2 = {
        "createNewRegistrationRequest",
        "Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;",
        "ssoToken",
        "",
        "pushNotificationToken",
        "pushNotificationProvider",
        "createAccessTokensRequest",
        "Lcom/sightcall/universal/agent/registration/AccessTokensRequest;",
        "refreshToken",
        "sdk_installedRelease"
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
.method public static final createAccessTokensRequest(Ljava/lang/String;)Lcom/sightcall/universal/agent/registration/AccessTokensRequest;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/agent/registration/AccessTokensRequest;

    new-instance v1, Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0, v2}, Lcom/sightcall/universal/agent/registration/AccessTokensRequest;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/registration/AccessTokensRequest$Attributes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final createNewRegistrationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;

    new-instance v1, Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;

    invoke-direct {v1, p0, p1, p2}, Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0, p1}, Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationRequest$Attributes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
