.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nBG\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\t\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        "",
        "value",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;",
        "currency",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;",
        "cart",
        "<init>",
        "(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;)V",
        "",
        "seen0",
        "",
        "dyType",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final b:F

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lo11;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lo11;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lo11;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Lo11;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object v0, v3, v1

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string v0, "sync-cart-v1"

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->b:F

    .line 37
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    .line 38
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;-><init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0xb

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p2, p6}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->b:F

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    :goto_0
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->d:Ljava/util/List;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method
