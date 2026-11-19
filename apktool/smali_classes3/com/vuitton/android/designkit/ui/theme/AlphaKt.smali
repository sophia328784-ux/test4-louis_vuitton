.class public abstract Lcom/vuitton/android/designkit/ui/theme/AlphaKt;
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
.field public static final a:Landroidx/compose/ui/graphics/SolidColor;

.field public static final b:Landroidx/compose/ui/graphics/SolidColor;

.field public static final c:Landroidx/compose/ui/graphics/SolidColor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->a:J

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->a:Landroidx/compose/ui/graphics/SolidColor;

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v7

    invoke-direct {v0, v7, v8, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->b:Landroidx/compose/ui/graphics/SolidColor;

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->c:Landroidx/compose/ui/graphics/SolidColor;

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v1, Lcom/vuitton/android/designkit/ui/theme/ColorPrimitive;->j:J

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v7

    invoke-direct {v0, v7, v8, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
