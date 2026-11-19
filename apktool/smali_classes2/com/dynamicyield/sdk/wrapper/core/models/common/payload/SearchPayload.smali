.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fBW\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;",
        "session",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;",
        "user",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;",
        "selector",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;",
        "context",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;",
        "query",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;",
        "options",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;

.field public final d:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;

.field public final f:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p8, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->d:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->d:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->e:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;

    goto :goto_1

    :cond_1
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->e:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;

    :goto_1
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->f:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;

    return-void

    :cond_2
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->f:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;

    return-void

    :cond_3
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    .line 55
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    .line 56
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->c:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;

    .line 57
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->d:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    .line 58
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->e:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;

    .line 59
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;->f:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move-object p6, v0

    .line 60
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;)V

    return-void
.end method
