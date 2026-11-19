.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v1, Ly41;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ly41;-><init>(I)V

    const-string v2, "User"

    invoke-static {v2, v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

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

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    iget-object v0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;->b:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-object v0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;->d:Ljava/lang/String;

    if-eqz p2, :cond_4

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, p0, v3, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_2
    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;->a:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-interface {p1, p0, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_4
    :goto_0
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
