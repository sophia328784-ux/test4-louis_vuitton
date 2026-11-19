.class public final Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;
.super Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer<",
        "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;",
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;",
        "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;

    const-class v1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;->c:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string p1, "totalRange"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "stepValue"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "unit"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_0
    const-string p1, "values"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "multiSelect"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "clearAllFiltersId"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;->INSTANCE:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0
.end method
