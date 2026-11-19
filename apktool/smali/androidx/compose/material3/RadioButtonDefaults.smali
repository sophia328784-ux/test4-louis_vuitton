.class public abstract Landroidx/compose/material3/RadioButtonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/RadioButtonDefaults;",
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


# direct methods
.method public static a(JJLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/RadioButtonColors;
    .locals 18

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p4 .. p4}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    iget-object v3, v0, Landroidx/compose/material3/ColorScheme;->e0:Landroidx/compose/material3/RadioButtonColors;

    if-nez v3, :cond_0

    new-instance v4, Landroidx/compose/material3/RadioButtonColors;

    sget-object v3, Landroidx/compose/material3/tokens/RadioButtonTokens;->d:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    sget-object v3, Landroidx/compose/material3/tokens/RadioButtonTokens;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    sget-object v3, Landroidx/compose/material3/tokens/RadioButtonTokens;->a:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    const v3, 0x3ec28f5c    # 0.38f

    invoke-static {v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v9

    sget-object v11, Landroidx/compose/material3/tokens/RadioButtonTokens;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    invoke-static {v3, v11, v12}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Landroidx/compose/material3/RadioButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v0, Landroidx/compose/material3/ColorScheme;->e0:Landroidx/compose/material3/RadioButtonColors;

    move-object v3, v4

    :cond_0
    const-wide/16 v4, 0x10

    cmp-long v0, p0, v4

    if-eqz v0, :cond_1

    move-wide/from16 v9, p0

    goto :goto_0

    :cond_1
    iget-wide v6, v3, Landroidx/compose/material3/RadioButtonColors;->a:J

    move-wide v9, v6

    :goto_0
    cmp-long v0, p2, v4

    if-eqz v0, :cond_2

    move-wide/from16 v11, p2

    goto :goto_1

    :cond_2
    iget-wide v6, v3, Landroidx/compose/material3/RadioButtonColors;->b:J

    move-wide v11, v6

    :goto_1
    cmp-long v0, v1, v4

    if-eqz v0, :cond_3

    move-wide v13, v1

    goto :goto_2

    :cond_3
    iget-wide v6, v3, Landroidx/compose/material3/RadioButtonColors;->c:J

    move-wide v13, v6

    :goto_2
    cmp-long v0, v1, v4

    if-eqz v0, :cond_4

    :goto_3
    move-wide v15, v1

    goto :goto_4

    :cond_4
    iget-wide v1, v3, Landroidx/compose/material3/RadioButtonColors;->d:J

    goto :goto_3

    :goto_4
    new-instance v8, Landroidx/compose/material3/RadioButtonColors;

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Landroidx/compose/material3/RadioButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
