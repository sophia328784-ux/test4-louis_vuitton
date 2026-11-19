.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eB[\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\r\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        "",
        "value",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;",
        "currency",
        "",
        "productId",
        "Lkotlin/UInt;",
        "quantity",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;",
        "cart",
        "<init>",
        "(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "dyType",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Lkotlin/UInt;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final b:F

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lg5;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lg5;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lg5;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lg5;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const/4 v1, 0x5

    aput-object v0, v3, v1

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p5, v0

    :cond_1
    const/4 p6, 0x0

    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;-><init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 47
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-string p6, "add-to-cart-v1"

    invoke-direct {p0, p6}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(Ljava/lang/String;)V

    .line 49
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->b:F

    .line 50
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    .line 51
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->d:Ljava/lang/String;

    .line 52
    iput p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->e:I

    .line 53
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->f:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Lkotlin/UInt;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0x1b

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-ne v1, p9, :cond_2

    invoke-direct {p0, p1, p2, p8}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->b:F

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    :goto_0
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->d:Ljava/lang/String;

    iget p2, p6, Lkotlin/UInt;->b:I

    iput p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->e:I

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->f:Ljava/util/List;

    return-void

    :cond_1
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->f:Ljava/util/List;

    return-void

    :cond_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method
