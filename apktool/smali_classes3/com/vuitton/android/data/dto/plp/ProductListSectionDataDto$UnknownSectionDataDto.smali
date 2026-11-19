.class public final Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;
.super Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownSectionDataDto"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;",
        "Lkotlinx/serialization/KSerializer;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
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
.field public static final INSTANCE:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

.field public static final synthetic b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lyp0;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lyp0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->b:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x20496f13

    return p0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "UnknownSectionDataDto"

    return-object p0
.end method
