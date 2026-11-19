.class public abstract Landroidx/compose/material3/FloatingActionButtonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingActionButtonDefaults;",
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
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    return-void
.end method

.method public static a(I)Landroidx/compose/material3/FloatingActionButtonElevation;
    .locals 8

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroidx/compose/material3/tokens/FabPrimaryContainerTokens;->b:F

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    sget v0, Landroidx/compose/material3/tokens/FabPrimaryContainerTokens;->e:F

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    sget v0, Landroidx/compose/material3/tokens/FabPrimaryContainerTokens;->c:F

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    sget v1, Landroidx/compose/material3/tokens/FabPrimaryContainerTokens;->d:F

    :cond_3
    move v6, v1

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Landroidx/compose/material3/FloatingActionButtonElevation;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/FloatingActionButtonElevation;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
