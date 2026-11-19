.class public final Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;",
        "userInformation",
        "Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;",
        "address",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;",
        "credentials",
        "Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;",
        "consents",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

.field public final b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

.field public final c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

.field public final d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;-><init>(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterInitiateBody(userInformation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", credentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
