.class public final Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;",
        "userRole",
        "Lcom/sightcall/session/datasource/reference/v3/UserRole;",
        "session_release"
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
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;

    new-instance v1, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;-><init>(Lcom/sightcall/session/datasource/reference/v3/UserRole;Lcom/sightcall/session/datasource/reference/v3/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;-><init>(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data$Attributes;)V

    invoke-direct {p0, v0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;-><init>(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Data;)V

    return-object p0
.end method
