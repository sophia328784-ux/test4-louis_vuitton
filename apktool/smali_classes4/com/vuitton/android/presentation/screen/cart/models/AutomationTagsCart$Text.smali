.class public abstract Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text$TextType;,
        Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text",
        "",
        "TextType",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text$TextType;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    const-string v0, "sample"

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_1
    const-string v0, "artOfGiftingShoppingBag"

    goto :goto_0

    :cond_2
    const-string v0, "artOfGiftingGiftMessage"

    goto :goto_0

    :cond_3
    const-string v0, "artOfGiftingPackaging"

    :goto_0
    sget-object v4, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Text$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    const-string p1, "Description"

    goto :goto_1

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_5
    const-string p1, "Title"

    :goto_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;->SHOPPING_BAG:Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    if-eq p0, v2, :cond_6

    move-object v1, p1

    :cond_6
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    const-string p0, "cart_"

    const-string p1, "_text"

    invoke-static {p0, v0, v1, p1}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
