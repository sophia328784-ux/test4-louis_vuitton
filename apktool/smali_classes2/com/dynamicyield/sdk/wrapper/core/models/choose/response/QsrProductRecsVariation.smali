.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tBK\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0008\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;",
        "",
        "id",
        "",
        "name",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;",
        "payload",
        "<init>",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;)V",
        "seen0",
        "decisionId",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;",
        "analyticsMetadata",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x14

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->d:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->e:Ljava/lang/String;

    :goto_0
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->f:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;

    return-void

    :cond_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;-><init>()V

    .line 36
    iput p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->d:I

    .line 37
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->e:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->f:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;-><init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;->f:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;

    return-object p0
.end method
