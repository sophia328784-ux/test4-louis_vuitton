.class public final Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;
.super Lcom/sightcall/universal/agent/registration/RegistrationResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001\u0010B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;",
        "Lcom/sightcall/universal/agent/registration/RegistrationResponse;",
        "type",
        "",
        "id",
        "attributes",
        "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;)V",
        "getType",
        "()Ljava/lang/String;",
        "getId",
        "getAttributes",
        "()Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;",
        "accessToken",
        "refreshToken",
        "Attributes",
        "sdk_installedRelease"
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
.field private final attributes:Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;

.field private final id:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/registration/RegistrationResponse;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->attributes:Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 19
    const-string p1, "refreshTokens"

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;)V

    return-void
.end method


# virtual methods
.method public accessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->attributes:Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributes()Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->attributes:Lcom/sightcall/universal/agent/registration/NewRegistrationResponse$Attributes;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->type:Ljava/lang/String;

    return-object p0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;->id:Ljava/lang/String;

    return-object p0
.end method
