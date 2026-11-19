.class public Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData;
.super Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;",
        "<init>",
        "()V",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DefaultRecsProductDataSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;


# instance fields
.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/DefaultRecsProductData;->b:Ljava/util/LinkedHashMap;

    return-void
.end method
