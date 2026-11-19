.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBI\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;",
        "session",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;",
        "user",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;",
        "context",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;",
        "events",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lew;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lew;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0xb

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ne v1, p6, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    :goto_0
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->d:Ljava/util/List;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    .line 38
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    .line 39
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    .line 40
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;)V

    return-void
.end method
