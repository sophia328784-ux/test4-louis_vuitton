.class public final Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$$serializer;,
        Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;",
        "",
        "",
        "id",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;",
        "dayPart",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;",
        "orderFulfillment",
        "<init>",
        "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Llg;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Llg;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Llg;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Llg;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    sput-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 32
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 34
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

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

    const-string v1, "Branch(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dayPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->b:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderFulfillment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
