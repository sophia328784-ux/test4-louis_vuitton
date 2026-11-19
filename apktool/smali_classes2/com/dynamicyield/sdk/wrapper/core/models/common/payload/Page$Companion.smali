.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;->OTHER:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$$serializer;

    return-object p0
.end method
