.class public abstract Landroidx/compose/material3/tokens/ElevationTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/ElevationTokens;",
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

.field public static final b:F

.field public static final c:F

.field public static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroidx/compose/material3/tokens/ElevationTokens;->a:F

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Landroidx/compose/material3/tokens/ElevationTokens;->b:F

    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Landroidx/compose/material3/tokens/ElevationTokens;->c:F

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Landroidx/compose/material3/tokens/ElevationTokens;->d:F

    return-void
.end method
