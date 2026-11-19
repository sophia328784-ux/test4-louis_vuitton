.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B9\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        "",
        "sortBy",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;",
        "sortOrder",
        "<init>",
        "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;)V",
        "",
        "seen0",
        "dyType",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lnw0;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lnw0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p5}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string v0, "sort-items-v1"

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    return-void
.end method
