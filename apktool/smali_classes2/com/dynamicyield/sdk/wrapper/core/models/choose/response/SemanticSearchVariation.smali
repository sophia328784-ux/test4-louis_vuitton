.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007BA\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0006\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;",
        "",
        "id",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;",
        "payload",
        "<init>",
        "(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;)V",
        "seen0",
        "",
        "decisionId",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;",
        "analyticsMetadata",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;


# instance fields
.field public final d:I

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;-><init>()V

    .line 26
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->d:I

    .line 27
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0xc

    const/16 v1, 0xc

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->d:I

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchPayload;

    return-object p0
.end method
