.class public final Lcom/sightcall/universal/util/ConfigUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "updateFromReference",
        "Lcom/sightcall/universal/model/Config;",
        "reference",
        "Lcom/sightcall/session/Reference;",
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
.method public static final updateFromReference(Lcom/sightcall/universal/model/Config;Lcom/sightcall/session/Reference;)Lcom/sightcall/universal/model/Config;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    iput-object v0, p0, Lcom/sightcall/universal/model/Config;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/model/Config;->hash(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    iget-object v0, v0, Lcom/sightcall/session/Reference$Provider;->annotationUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/model/Config;->urlAnnotation(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    sget-object v1, Lcom/sightcall/session/Reference$UserRole$Attendee;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Attendee;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sightcall/session/Reference$UserRole$Guest;->INSTANCE:Lcom/sightcall/session/Reference$UserRole$Guest;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sightcall/universal/model/Config;->role(Lcom/sightcall/universal/model/Session$Role;)Lcom/sightcall/universal/model/Config;

    iget-object p1, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object p1, p1, Lcom/sightcall/session/Reference$UseCase;->rtccMpi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/model/Config;->mpi(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
