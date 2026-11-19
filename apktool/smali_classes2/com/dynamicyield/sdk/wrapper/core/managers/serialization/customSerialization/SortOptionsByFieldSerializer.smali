.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v1, "ByField"

    invoke-static {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByFieldSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

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
    .locals 2

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz p0, :cond_0

    new-instance p0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    iget-object v0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->a(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    const-string v1, "field"

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonPrimitive;)V

    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->a(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p2

    const-string v0, "order"

    invoke-virtual {p0, v0, p2}, Lkotlinx/serialization/json/JsonObjectBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonPrimitive;)V

    new-instance p2, Lkotlinx/serialization/json/JsonObject;

    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectBuilder;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p2, p0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->j(Lkotlinx/serialization/json/JsonObject;)V

    return-void

    :cond_0
    const-string p0, "This serializer can be used only with Json format"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
