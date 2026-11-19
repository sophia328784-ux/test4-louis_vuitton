.class public abstract Landroidx/compose/ui/graphics/colorspace/ConnectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui-graphics"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/collection/MutableIntObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->e:Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->a:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v3, v1, 0x6

    or-int/2addr v1, v3

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Connector;->e:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->b:I

    new-instance v3, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v0, v2, v4}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v2, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    sget-object v5, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->x:Landroidx/compose/ui/graphics/colorspace/Oklab;

    iget v6, v5, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v2

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Connector;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v5, v8, v4}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v9, v5, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v9

    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-direct {v9, v5, v0, v8, v4}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v5, 0x1

    invoke-direct {v0, v8, v5, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v3}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v9}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ConnectorKt;->a:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method
