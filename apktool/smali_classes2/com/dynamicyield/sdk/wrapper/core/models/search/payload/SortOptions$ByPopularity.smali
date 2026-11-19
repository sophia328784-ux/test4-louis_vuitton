.class public final Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;
.super Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByPopularity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;",
        "order",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;)V",
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
    with = Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByPopularitySerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity$Companion;


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    const-string p1, "popularity"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ByPopularity(order="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
