.class public final Landroidx/compose/material3/IconButtonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/material3/IconButtonDefaults;",
        "",
        "IconButtonWidthOption",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroidx/compose/material3/ColorScheme;J)Landroidx/compose/material3/IconButtonColors;
    .locals 11

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->b0:Landroidx/compose/material3/IconButtonColors;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/material3/IconButtonColors;

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->h:J

    sget v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->a:F

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v6, v2

    move-wide v4, p1

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/material3/ColorScheme;->b0:Landroidx/compose/material3/IconButtonColors;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static b(JJLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/IconButtonColors;
    .locals 10

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->i:J

    sget v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->a:F

    invoke-static {v0, p2, p3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p4}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, p4, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-static {v0, v1, v2}, Landroidx/compose/material3/IconButtonDefaults;->a(Landroidx/compose/material3/ColorScheme;J)Landroidx/compose/material3/IconButtonColors;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/IconButtonColors;->a(JJJJ)Landroidx/compose/material3/IconButtonColors;

    move-result-object p0

    return-object p0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->a:Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->b:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    sget v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->e:F

    sget v1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->f:F

    add-float/2addr v0, v1

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->c:F

    add-float/2addr v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    :goto_0
    sget v1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->d:F

    add-float/2addr v1, v0

    sget v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->a:F

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method
