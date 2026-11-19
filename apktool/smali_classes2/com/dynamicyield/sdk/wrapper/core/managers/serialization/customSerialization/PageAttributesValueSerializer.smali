.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;

.field public static final b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;

    const-string v0, "PageAttributesValue"

    sget-object v1, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->a:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->x()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$StringValue;

    invoke-direct {p1, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$StringValue;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;

    iget p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$NumberValue;->a:I

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->z(I)V

    return-void

    :cond_0
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$StringValue;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$StringValue;

    iget-object p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute$StringValue;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->E(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void
.end method
