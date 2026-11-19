.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tBK\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0008\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;",
        "",
        "id",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;",
        "payload",
        "",
        "rolloutFlag",
        "<init>",
        "(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;)V",
        "seen0",
        "",
        "decisionId",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;",
        "analyticsMetadata",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;


# instance fields
.field public final d:I

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;

.field public final f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;-><init>()V

    .line 36
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->d:I

    .line 37
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;

    .line 38
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;-><init>(ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0xc

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->d:I

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->f:Ljava/lang/Boolean;

    return-void

    :cond_0
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->f:Ljava/lang/Boolean;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;

    return-object p0
.end method
