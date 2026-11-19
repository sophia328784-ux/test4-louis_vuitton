.class public abstract Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$BaselineAnchor;,
        Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$HorizontalAnchor;,
        Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u0013\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;",
        "",
        "Landroidx/constraintlayout/core/parser/CLObject;",
        "extendFrom",
        "<init>",
        "(Landroidx/constraintlayout/core/parser/CLObject;)V",
        "()V",
        "BaselineAnchor",
        "HorizontalAnchor",
        "VerticalAnchor",
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
.field public final a:Landroidx/constraintlayout/core/parser/CLObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;-><init>(Landroidx/constraintlayout/core/parser/CLObject;)V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLObject;->S()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/constraintlayout/core/parser/CLObject;

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-direct {p1, v0}, Landroidx/constraintlayout/core/parser/CLObject;-><init>([C)V

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;

    iget-object p1, p1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->hashCode()I

    move-result p0

    return p0
.end method
