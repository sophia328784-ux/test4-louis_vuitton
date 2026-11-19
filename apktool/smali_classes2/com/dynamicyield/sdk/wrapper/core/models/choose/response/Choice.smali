.class public abstract Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0007\u0003\u0004\u0005\u0006\u0007\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;",
        "",
        "Companion",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;
.end method

.method public abstract d()Ljava/util/List;
.end method
