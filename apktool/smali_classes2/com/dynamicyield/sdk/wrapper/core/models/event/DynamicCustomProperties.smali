.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;
.super Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;",
        "",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;",
        "map",
        "<init>",
        "(Ljava/util/Map;)V",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties$Companion;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;->a:Ljava/util/Map;

    return-void
.end method
