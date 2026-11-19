.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBQ\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        "",
        "value",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;",
        "currency",
        "",
        "uniqueTransactionId",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;",
        "cart",
        "<init>",
        "(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;)V",
        "",
        "seen0",
        "dyType",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;

.field public static final f:[Lkotlin/Lazy;


# instance fields
.field public final b:F

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lyp0;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lyp0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lyp0;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Lyp0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x5

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v1, 0x4

    aput-object v0, v3, v1

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->f:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string v0, "purchase-v1"

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(Ljava/lang/String;)V

    .line 45
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->b:F

    .line 46
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    .line 47
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->d:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;-><init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x13

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v2, v0, :cond_2

    invoke-direct {p0, p1, p2, p7}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->b:F

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    :goto_0
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->d:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->e:Ljava/util/List;

    return-void

    :cond_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method
