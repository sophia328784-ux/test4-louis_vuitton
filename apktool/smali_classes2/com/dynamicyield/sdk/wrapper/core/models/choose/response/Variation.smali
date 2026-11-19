.class public abstract Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B/\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0002\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;",
        "",
        "<init>",
        "()V",
        "",
        "seen0",
        "",
        "decisionId",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;",
        "analyticsMetadata",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;

.field public static final c:Lkotlin/Lazy;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lb51;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lb51;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;

    return-void
.end method

.method public static final synthetic b(Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;

    if-eqz v0, :cond_3

    :goto_1
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata$$serializer;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;
.end method
