.class public abstract Landroidx/compose/material3/tokens/SliderTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/SliderTokens;",
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

.field public static final b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final d:F

.field public static final e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final f:F

.field public static final g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final h:F

.field public static final i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final j:F

.field public static final k:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final l:F

.field public static final m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final n:F

.field public static final o:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->a:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraExtraLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SliderTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v2, 0x3ec28f5c    # 0.38f

    sput v2, Landroidx/compose/material3/tokens/SliderTokens;->d:F

    sput-object v1, Landroidx/compose/material3/tokens/SliderTokens;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v2, Landroidx/compose/material3/tokens/SliderTokens;->f:F

    sput-object v1, Landroidx/compose/material3/tokens/SliderTokens;->g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v1, 0x3df5c28f    # 0.12f

    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->h:F

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/high16 v0, 0x42300000    # 44.0f

    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->j:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->k:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->l:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SliderTokens;->m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/high16 v1, 0x41800000    # 16.0f

    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->n:F

    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->o:F

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-void
.end method
