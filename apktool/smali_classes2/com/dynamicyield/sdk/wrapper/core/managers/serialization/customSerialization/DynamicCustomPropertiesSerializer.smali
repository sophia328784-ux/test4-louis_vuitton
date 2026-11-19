.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;

.field public static final b:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->e(Lkotlin/jvm/internal/StringCompanionObject;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v1, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->c(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    move-result-object v0

    iget-object v0, v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->c:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;->b:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-void
.end method

.method public static f(Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;Ljava/util/Set;I)Lkotlinx/serialization/json/JsonElement;
    .locals 6

    const/16 v0, 0x64

    if-gt p2, v0, :cond_b

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$StringVal;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$StringVal;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$StringVal;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->a(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$NumberVal;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$NumberVal;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$NumberVal;->a:Ljava/lang/Number;

    sget-object p0, Lkotlinx/serialization/json/JsonElementKt;->a:Lkotlinx/serialization/internal/InlineClassDescriptor;

    if-nez v1, :cond_2

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_2
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$BooleanVal;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$BooleanVal;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$BooleanVal;->a:Ljava/lang/Boolean;

    sget-object p0, Lkotlinx/serialization/json/JsonElementKt;->a:Lkotlinx/serialization/internal/InlineClassDescriptor;

    if-nez v1, :cond_4

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_4
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$ListVal;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$ListVal;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$ListVal;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, p1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;->f(Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;Ljava/util/Set;I)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$MapVal;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$MapVal;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$MapVal;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v1, p1, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;->f(Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;Ljava/util/Set;I)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_9
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Circular reference detected in DynamicCustomProperties"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Maximum nesting depth of 100 exceeded"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;->b:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "This class can\'t be deserialize"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;->a:Ljava/util/Map;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;->f(Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;Ljava/util/Set;I)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, p2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/json/JsonEncoder;->j(Lkotlinx/serialization/json/JsonObject;)V

    return-void

    :cond_2
    const-string p0, "DynamicCustomPropertiesSerializer only supports JSON"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
