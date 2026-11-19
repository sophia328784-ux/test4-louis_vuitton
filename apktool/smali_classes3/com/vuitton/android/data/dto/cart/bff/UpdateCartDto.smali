.class public final Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$$serializer;,
        Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBA\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;",
        "",
        "",
        "giftMessage",
        "",
        "isBlank",
        "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;",
        "shoppingBag",
        "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;",
        "samples",
        "<init>",
        "(Ljava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

.field public final d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p6, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->b:Z

    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    return-void

    :cond_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->a:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->b:Z

    .line 38
    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    .line 39
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;-><init>(Ljava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isBlank="

    const-string v1, ", shoppingBag="

    const-string v2, "UpdateCartDto(giftMessage="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
