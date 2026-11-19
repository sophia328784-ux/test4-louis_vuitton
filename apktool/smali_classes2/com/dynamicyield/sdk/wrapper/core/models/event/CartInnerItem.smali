.class public final Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;",
        "",
        "",
        "productId",
        "Lkotlin/UInt;",
        "quantity",
        "",
        "itemPrice",
        "<init>",
        "(Ljava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlin/UInt;

.field public final c:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p1, 0x7

    const/4 p6, 0x7

    if-ne p6, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->b:Lkotlin/UInt;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->c:Ljava/lang/Float;

    return-void

    :cond_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, p6, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->b:Lkotlin/UInt;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->c:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->b:Lkotlin/UInt;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->b:Lkotlin/UInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->c:Ljava/lang/Float;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->c:Ljava/lang/Float;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->b:Lkotlin/UInt;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget v2, v2, Lkotlin/UInt;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->c:Ljava/lang/Float;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartInnerItem(productId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->b:Lkotlin/UInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;->c:Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
