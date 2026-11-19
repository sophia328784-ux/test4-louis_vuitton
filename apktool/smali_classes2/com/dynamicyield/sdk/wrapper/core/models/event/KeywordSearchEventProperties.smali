.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0002\r\u000cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B/\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;",
        "",
        "keywords",
        "<init>",
        "(Ljava/lang/String;)V",
        "",
        "seen0",
        "dyType",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;->b:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v0, "keyword-search-v1"

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/KeywordSearchEventProperties;->b:Ljava/lang/String;

    return-void
.end method
