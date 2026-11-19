.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008BC\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0007\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;",
        "",
        "sku",
        "slotId",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;",
        "productData",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;)V",
        "",
        "seen0",
        "variationId",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$Companion;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0xe

    const/16 v1, 0xe

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p6}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;-><init>(ILjava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->c:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->d:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->e:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;

    return-void
.end method
