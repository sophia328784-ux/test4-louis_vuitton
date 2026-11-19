.class public abstract Lcom/vuitton/android/designkit/ui/theme/GradientKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/graphics/LinearGradient;

.field public static final b:Landroidx/compose/ui/graphics/LinearGradient;

.field public static final c:Landroidx/compose/ui/graphics/LinearGradient;

.field public static final d:Landroidx/compose/ui/graphics/LinearGradient;

.field public static final e:Landroidx/compose/ui/graphics/LinearGradient;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v3

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v5

    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/high16 v7, 0x4d000000    # 1.34217728E8f

    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v7

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v5, v7}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-array v5, v2, [Lkotlin/Pair;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/Brush$Companion;->c(Landroidx/compose/ui/graphics/Brush$Companion;[Lkotlin/Pair;)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v3

    sput-object v3, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v7

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v7

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide v8, 0x80000000L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v8

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v7, v8}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-array v5, v2, [Lkotlin/Pair;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/Brush$Companion;->c(Landroidx/compose/ui/graphics/Brush$Companion;[Lkotlin/Pair;)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v3

    sput-object v3, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->b:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v7

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v7

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide v3, 0xb3000000L

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v3

    new-instance v8, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v8, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v7, v3}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-array v4, v2, [Lkotlin/Pair;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/Brush$Companion;->c(Landroidx/compose/ui/graphics/Brush$Companion;[Lkotlin/Pair;)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v3

    sput-object v3, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->c:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v3

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide v4, 0xcc000000L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v7

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v7}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-array v7, v2, [Lkotlin/Pair;

    invoke-interface {v3, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    array-length v7, v3

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlin/Pair;

    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/Brush$Companion;->c(Landroidx/compose/ui/graphics/Brush$Companion;[Lkotlin/Pair;)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v3

    sput-object v3, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->d:Landroidx/compose/ui/graphics/LinearGradient;

    const-wide v7, 0x8c000000L

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v7

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x3e75c28f    # 0.24f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v3, 0x1c000000

    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v8

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    move-result-wide v3

    new-instance v1, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v8, v3}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlin/Pair;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlin/Pair;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush$Companion;->c(Landroidx/compose/ui/graphics/Brush$Companion;[Lkotlin/Pair;)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->e:Landroidx/compose/ui/graphics/LinearGradient;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll00;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p1, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->d:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->b:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
