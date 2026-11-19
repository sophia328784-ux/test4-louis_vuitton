.class public final Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
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


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 2

    iget p2, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    move-result p3

    const/16 p4, 0x20

    shr-long v0, p5, p4

    long-to-int v0, v0

    const/4 v1, 0x2

    invoke-static {p3, v0, v1, p2}, La;->a(IIII)I

    move-result p2

    iget p3, p1, Landroidx/compose/ui/unit/IntRect;->b:I

    const-wide v0, 0xffffffffL

    and-long/2addr p5, v0

    long-to-int p5, p5

    sub-int/2addr p3, p5

    iget p0, p0, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;->a:I

    sub-int/2addr p3, p0

    if-gez p3, :cond_0

    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->d:I

    add-int p3, p1, p0

    :cond_0
    int-to-long p0, p2

    shl-long/2addr p0, p4

    int-to-long p2, p3

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    return-wide p0
.end method
