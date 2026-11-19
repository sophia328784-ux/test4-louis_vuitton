.class public final Lcom/sightcall/session/Reference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/session/Reference$Button;,
        Lcom/sightcall/session/Reference$CallDistribution;,
        Lcom/sightcall/session/Reference$CameraSide;,
        Lcom/sightcall/session/Reference$Customization;,
        Lcom/sightcall/session/Reference$Provider;,
        Lcom/sightcall/session/Reference$UseCase;,
        Lcom/sightcall/session/Reference$UserRole;,
        Lcom/sightcall/session/Reference$VideoProfile;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u000801234567Bu\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010!\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\t\u0010\"\u001a\u00020\rH\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\t\u0010&\u001a\u00020\u0012H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u0094\u0001\u0010*\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00c6\u0001\u00a2\u0006\u0002\u0010+J\u0014\u0010,\u001a\u00020\u00152\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010.\u001a\u00020\tH\u00d6\u0081\u0004J\n\u0010/\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001a\u00a8\u00068"
    }
    d2 = {
        "Lcom/sightcall/session/Reference;",
        "",
        "id",
        "",
        "useCase",
        "Lcom/sightcall/session/Reference$UseCase;",
        "provider",
        "Lcom/sightcall/session/Reference$Provider;",
        "productId",
        "",
        "locationId",
        "languageId",
        "customization",
        "Lcom/sightcall/session/Reference$Customization;",
        "acdMask",
        "",
        "acdValue",
        "authorizationToken",
        "Lcom/sightcall/httpclient/AuthorizationToken;",
        "authorizationHash",
        "takeUhdPicture",
        "",
        "<init>",
        "(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "()Ljava/lang/Integer;",
        "component5",
        "component6",
        "component7",
        "component8",
        "()Ljava/lang/Long;",
        "component9",
        "component10",
        "component11",
        "component12",
        "()Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/session/Reference;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "UseCase",
        "Provider",
        "Customization",
        "UserRole",
        "CallDistribution",
        "Button",
        "CameraSide",
        "VideoProfile",
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


# instance fields
.field public final acdMask:Ljava/lang/Long;

.field public final acdValue:Ljava/lang/Long;

.field public final authorizationHash:Ljava/lang/String;

.field public final authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

.field public final customization:Lcom/sightcall/session/Reference$Customization;

.field public final id:Ljava/lang/String;

.field public final languageId:Ljava/lang/Integer;

.field public final locationId:Ljava/lang/Integer;

.field public final productId:Ljava/lang/Integer;

.field public final provider:Lcom/sightcall/session/Reference$Provider;

.field public final takeUhdPicture:Ljava/lang/Boolean;

.field public final useCase:Lcom/sightcall/session/Reference$UseCase;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iput-object p3, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    iput-object p4, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    iput-object p8, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    iput-object p9, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    iput-object p10, p0, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    iput-object p11, p0, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    iput-object p12, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/session/Reference;Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/sightcall/session/Reference;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p6, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p7, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p8, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p9, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p10, p0, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-object p12, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/sightcall/session/Reference;->copy(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/session/Reference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Lcom/sightcall/httpclient/AuthorizationToken;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/session/Reference$UseCase;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    return-object p0
.end method

.method public final component3()Lcom/sightcall/session/Reference$Provider;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component7()Lcom/sightcall/session/Reference$Customization;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    return-object p0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    return-object p0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/session/Reference;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/session/Reference;

    invoke-direct/range {p0 .. p12}, Lcom/sightcall/session/Reference;-><init>(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/session/Reference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/session/Reference;

    iget-object v1, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    invoke-virtual {v3}, Lcom/sightcall/session/Reference$UseCase;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    invoke-virtual {v0}, Lcom/sightcall/session/Reference$Provider;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    invoke-virtual {v3}, Lcom/sightcall/session/Reference$Customization;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {v0}, Lcom/sightcall/httpclient/AuthorizationToken;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/sightcall/session/Reference;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v2, p0, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    iget-object v3, p0, Lcom/sightcall/session/Reference;->productId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sightcall/session/Reference;->locationId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/sightcall/session/Reference;->languageId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sightcall/session/Reference;->customization:Lcom/sightcall/session/Reference$Customization;

    iget-object v7, p0, Lcom/sightcall/session/Reference;->acdMask:Ljava/lang/Long;

    iget-object v8, p0, Lcom/sightcall/session/Reference;->acdValue:Ljava/lang/Long;

    iget-object v9, p0, Lcom/sightcall/session/Reference;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    iget-object v10, p0, Lcom/sightcall/session/Reference;->authorizationHash:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/session/Reference;->takeUhdPicture:Ljava/lang/Boolean;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Reference(id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", useCase="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", provider="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", productId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", locationId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", languageId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", customization="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", acdMask="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", acdValue="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", authorizationToken="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", authorizationHash="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", takeUhdPicture="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
