.class public abstract Lcom/vuitton/android/data/dto/cart/bff/mapper/CartContributionMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;->d:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6, p0}, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, v1}, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;)V

    return-object v0
.end method
