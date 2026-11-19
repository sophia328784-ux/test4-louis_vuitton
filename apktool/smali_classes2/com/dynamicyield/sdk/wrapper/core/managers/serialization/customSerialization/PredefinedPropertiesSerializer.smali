.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
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
.field public static final a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v3, "PredefinedProperties"

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v7, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-direct {v7, v3}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    const-string v5, "dyType"

    invoke-virtual {v7, v5, v4, v2, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    new-instance v2, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    sget-object v4, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->a:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    iget-object v0, v7, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    sput-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void

    :cond_0
    const-string v0, "Blank serial names are prohibited"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

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
    .locals 0

    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_2
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_3
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_4
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_5
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_6
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_7
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_8
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToWishListEventProperties;

    if-eqz p0, :cond_9

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToWishListEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToWishListEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToWishListEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_9
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/FilterItemsEventProperties;

    if-eqz p0, :cond_a

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/FilterItemsEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/FilterItemsEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/FilterItemsEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_a
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/ChangeAttributesProperties;

    if-eqz p0, :cond_b

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ChangeAttributesProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/ChangeAttributesProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/ChangeAttributesProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_b
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties;

    if-eqz p0, :cond_c

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_c
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptInProperties;

    if-eqz p0, :cond_d

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptInProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptInProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptInProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_d
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptOutProperties;

    if-eqz p0, :cond_e

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptOutProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptOutProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PushOptOutProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_e
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;

    if-eqz p0, :cond_f

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_f
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;

    if-eqz p0, :cond_10

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_10
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;

    if-eqz p0, :cond_11

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_11
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/PromoCodeEnterEventProperties;

    if-eqz p0, :cond_12

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PromoCodeEnterEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PromoCodeEnterEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PromoCodeEnterEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    :cond_12
    instance-of p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties;

    if-eqz p0, :cond_13

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties$Companion;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method
