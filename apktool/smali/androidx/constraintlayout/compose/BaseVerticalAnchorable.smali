.class public abstract Landroidx/constraintlayout/compose/BaseVerticalAnchorable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/compose/VerticalAnchorable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008 \u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/BaseVerticalAnchorable;",
        "Landroidx/constraintlayout/compose/VerticalAnchorable;",
        "Landroidx/constraintlayout/core/parser/CLObject;",
        "containerObject",
        "",
        "index",
        "<init>",
        "(Landroidx/constraintlayout/core/parser/CLObject;I)V",
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

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/parser/CLObject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/compose/BaseVerticalAnchorable;->a:Landroidx/constraintlayout/core/parser/CLObject;

    const/4 p1, -0x2

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "right"

    goto :goto_1

    :cond_1
    const-string p1, "left"

    goto :goto_1

    :cond_2
    const-string p1, "end"

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "start"

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/compose/BaseVerticalAnchorable;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;F)V
    .locals 3

    iget v0, p1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;->b:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "right"

    goto :goto_1

    :cond_1
    const-string v0, "left"

    goto :goto_1

    :cond_2
    const-string v0, "end"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "start"

    :goto_1
    new-instance v1, Landroidx/constraintlayout/core/parser/CLArray;

    const/4 v2, 0x0

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/parser/CLArray;-><init>([C)V

    iget-object p1, p1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/constraintlayout/core/parser/CLString;->z(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->z(Landroidx/constraintlayout/core/parser/CLElement;)V

    invoke-static {v0}, Landroidx/constraintlayout/core/parser/CLString;->z(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->z(Landroidx/constraintlayout/core/parser/CLElement;)V

    new-instance p1, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-direct {p1, p2}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>(F)V

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->z(Landroidx/constraintlayout/core/parser/CLElement;)V

    new-instance p1, Landroidx/constraintlayout/core/parser/CLNumber;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>(F)V

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->z(Landroidx/constraintlayout/core/parser/CLElement;)V

    iget-object p1, p0, Landroidx/constraintlayout/compose/BaseVerticalAnchorable;->a:Landroidx/constraintlayout/core/parser/CLObject;

    iget-object p0, p0, Landroidx/constraintlayout/compose/BaseVerticalAnchorable;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    return-void
.end method
