.class public abstract Landroidx/compose/material3/MenuDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/MenuDefaults;",
        "",
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


# static fields
.field public static final a:F

.field public static final b:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->a:F

    sget v0, Landroidx/compose/material3/tokens/MenuTokens;->b:F

    sput v0, Landroidx/compose/material3/MenuDefaults;->a:F

    sget v0, Landroidx/compose/material3/MenuKt;->c:F

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->b(FF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    return-void
.end method

.method public static a(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;
    .locals 15

    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->d0:Landroidx/compose/material3/MenuItemColors;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/material3/MenuItemColors;

    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v2

    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->h:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->j:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v6

    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    sget v0, Landroidx/compose/material3/tokens/ListTokens;->b:F

    invoke-static {v0, v8, v9}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v8

    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    sget v0, Landroidx/compose/material3/tokens/ListTokens;->d:F

    invoke-static {v0, v10, v11}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v10

    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget v0, Landroidx/compose/material3/tokens/ListTokens;->f:F

    invoke-static {v0, v12, v13}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/material3/ColorScheme;->d0:Landroidx/compose/material3/MenuItemColors;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static b(JLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/MenuItemColors;
    .locals 21

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p2 .. p2}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material3/MenuDefaults;->a(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;

    move-result-object v0

    const-wide/16 v3, 0x10

    cmp-long v5, p0, v3

    if-eqz v5, :cond_0

    move-wide/from16 v8, p0

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Landroidx/compose/material3/MenuItemColors;->a:J

    move-wide v8, v5

    :goto_0
    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    move-wide v10, v1

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Landroidx/compose/material3/MenuItemColors;->b:J

    move-wide v10, v5

    :goto_1
    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    move-wide v12, v1

    goto :goto_2

    :cond_2
    iget-wide v5, v0, Landroidx/compose/material3/MenuItemColors;->c:J

    move-wide v12, v5

    :goto_2
    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    move-wide v14, v1

    goto :goto_3

    :cond_3
    iget-wide v5, v0, Landroidx/compose/material3/MenuItemColors;->d:J

    move-wide v14, v5

    :goto_3
    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    move-wide/from16 v16, v1

    goto :goto_4

    :cond_4
    iget-wide v5, v0, Landroidx/compose/material3/MenuItemColors;->e:J

    move-wide/from16 v16, v5

    :goto_4
    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    :goto_5
    move-wide/from16 v18, v1

    goto :goto_6

    :cond_5
    iget-wide v1, v0, Landroidx/compose/material3/MenuItemColors;->f:J

    goto :goto_5

    :goto_6
    new-instance v7, Landroidx/compose/material3/MenuItemColors;

    const/16 v20, 0x0

    invoke-direct/range {v7 .. v20}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
