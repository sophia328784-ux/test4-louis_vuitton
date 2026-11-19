.class public final Landroidx/constraintlayout/compose/DimensionSymbol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/DimensionSymbol;",
        "",
        "Landroidx/compose/ui/unit/Dp;",
        "value",
        "",
        "symbol",
        "debugName",
        "<init>",
        "(Landroidx/compose/ui/unit/Dp;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "constraintlayout-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/unit/Dp;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Dp;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/compose/DimensionSymbol;->a:Landroidx/compose/ui/unit/Dp;

    iput-object p2, p0, Landroidx/constraintlayout/compose/DimensionSymbol;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/compose/DimensionSymbol;->a:Landroidx/compose/ui/unit/Dp;

    if-eqz v0, :cond_0

    iget p0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    new-instance v0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>(F)V

    return-object v0

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/compose/DimensionSymbol;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLString;->z(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLString;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "wrap"

    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLString;->z(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLString;

    move-result-object p0

    return-object p0
.end method
