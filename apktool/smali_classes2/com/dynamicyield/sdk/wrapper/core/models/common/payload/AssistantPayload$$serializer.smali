.class public final synthetic Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.dynamicyield.sdk.wrapper.core.models.common.payload.AssistantPayload"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "session"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "user"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "selector"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "context"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "query"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "options"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-static {v4}, Lb21;->l(I)V

    return-object v2

    :pswitch_0
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$$serializer;

    const/4 v12, 0x5

    invoke-interface {p1, p0, v12, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;

    or-int/lit8 v5, v5, 0x20

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery$$serializer;

    const/4 v12, 0x4

    invoke-interface {p1, p0, v12, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery;

    or-int/lit8 v5, v5, 0x10

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;

    const/4 v12, 0x3

    invoke-interface {p1, p0, v12, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    or-int/lit8 v5, v5, 0x8

    goto :goto_0

    :pswitch_3
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector$$serializer;

    const/4 v12, 0x2

    invoke-interface {p1, p0, v12, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :pswitch_4
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;

    invoke-interface {p1, p0, v0, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :pswitch_5
    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session$$serializer;

    invoke-interface {p1, p0, v1, v4, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_6
    move v3, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;-><init>(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery;Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session$$serializer;

    iget-object v1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    iget-object v2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->f:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions;

    iget-object v3, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->d:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    const/4 v4, 0x0

    invoke-interface {p1, p0, v4, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;

    iget-object v1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    const/4 v4, 0x1

    invoke-interface {p1, p0, v4, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector$$serializer;

    iget-object v1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector;

    const/4 v4, 0x2

    invoke-interface {p1, p0, v4, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    :goto_0
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;

    const/4 v1, 0x3

    invoke-interface {p1, p0, v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery$$serializer;

    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;->e:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery;

    const/4 v1, 0x4

    invoke-interface {p1, p0, v1, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    :goto_1
    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$$serializer;

    const/4 v0, 0x5

    invoke-interface {p1, p0, v0, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 4

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantOptions$$serializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session$$serializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SingleNameSelector$$serializer;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p0, v1, v2

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/payload/AssistantQuery$$serializer;

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const/4 p0, 0x5

    aput-object v0, v1, p0

    return-object v1
.end method
