.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;
.super Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;",
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;",
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


# static fields
.field public static final c:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;

.field public static final d:Lkotlinx/serialization/DeserializationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;

    const-class v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;

    invoke-virtual {v0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;->d:Lkotlinx/serialization/DeserializationStrategy;

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;->d:Lkotlinx/serialization/DeserializationStrategy;

    return-object p0
.end method
