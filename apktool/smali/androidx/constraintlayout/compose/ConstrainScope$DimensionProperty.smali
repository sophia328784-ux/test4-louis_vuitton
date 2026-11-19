.class final Landroidx/constraintlayout/compose/ConstrainScope$DimensionProperty;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/compose/ConstrainScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DimensionProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Landroidx/constraintlayout/compose/Dimension;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/ConstrainScope$DimensionProperty;",
        "Lkotlin/properties/ObservableProperty;",
        "Landroidx/constraintlayout/compose/Dimension;",
        "initialValue",
        "<init>",
        "(Landroidx/constraintlayout/compose/ConstrainScope;Landroidx/constraintlayout/compose/Dimension;)V",
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
.field public final synthetic b:Landroidx/constraintlayout/compose/ConstrainScope;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/compose/ConstrainScope;Landroidx/constraintlayout/compose/Dimension;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/compose/Dimension;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/constraintlayout/compose/ConstrainScope$DimensionProperty;->b:Landroidx/constraintlayout/compose/ConstrainScope;

    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Landroidx/constraintlayout/compose/Dimension;

    check-cast p3, Landroidx/constraintlayout/compose/Dimension;

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstrainScope$DimensionProperty;->b:Landroidx/constraintlayout/compose/ConstrainScope;

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstrainScope;->b:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-interface {p1}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Landroidx/constraintlayout/compose/DimensionDescription;

    iget-object p2, p3, Landroidx/constraintlayout/compose/DimensionDescription;->a:Landroidx/constraintlayout/compose/DimensionSymbol;

    iget-object v0, p3, Landroidx/constraintlayout/compose/DimensionDescription;->c:Landroidx/constraintlayout/compose/DimensionSymbol;

    iget-object p3, p3, Landroidx/constraintlayout/compose/DimensionDescription;->b:Landroidx/constraintlayout/compose/DimensionSymbol;

    iget-object v1, p3, Landroidx/constraintlayout/compose/DimensionSymbol;->a:Landroidx/compose/ui/unit/Dp;

    iget-object v2, p3, Landroidx/constraintlayout/compose/DimensionSymbol;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iget-object v1, v0, Landroidx/constraintlayout/compose/DimensionSymbol;->a:Landroidx/compose/ui/unit/Dp;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/constraintlayout/compose/DimensionSymbol;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroidx/constraintlayout/compose/DimensionSymbol;->a()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p2

    goto :goto_2

    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/parser/CLObject;

    const/4 v3, 0x0

    new-array v3, v3, [C

    invoke-direct {v1, v3}, Landroidx/constraintlayout/core/parser/CLObject;-><init>([C)V

    iget-object v3, p3, Landroidx/constraintlayout/compose/DimensionSymbol;->a:Landroidx/compose/ui/unit/Dp;

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "min"

    invoke-virtual {p3}, Landroidx/constraintlayout/compose/DimensionSymbol;->a()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    :goto_0
    iget-object p3, v0, Landroidx/constraintlayout/compose/DimensionSymbol;->a:Landroidx/compose/ui/unit/Dp;

    if-nez p3, :cond_2

    iget-object p3, v0, Landroidx/constraintlayout/compose/DimensionSymbol;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "max"

    invoke-virtual {v0}, Landroidx/constraintlayout/compose/DimensionSymbol;->a()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    :goto_1
    const-string p3, "value"

    invoke-virtual {p2}, Landroidx/constraintlayout/compose/DimensionSymbol;->a()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    move-object p2, v1

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    return-void
.end method
