.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B5\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;",
        "",
        "",
        "attribute",
        "",
        "values",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$Companion;

.field public static final c:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ll30;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ll30;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->c:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-ne v0, p4, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->b:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->b:Ljava/util/List;

    return-void
.end method
