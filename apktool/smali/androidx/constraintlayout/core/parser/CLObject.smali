.class public Landroidx/constraintlayout/core/parser/CLObject;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/constraintlayout/core/parser/CLContainer;",
        "Ljava/lang/Iterable<",
        "Landroidx/constraintlayout/core/parser/CLKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A()Landroidx/constraintlayout/core/parser/CLContainer;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->S()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method

.method public final S()Landroidx/constraintlayout/core/parser/CLObject;
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->A()Landroidx/constraintlayout/core/parser/CLContainer;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/parser/CLObject;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->A()Landroidx/constraintlayout/core/parser/CLContainer;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/parser/CLObject;

    return-object p0
.end method

.method public final bridge synthetic f()Landroidx/constraintlayout/core/parser/CLElement;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->S()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->c:I

    iput-object p0, v0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->b:Landroidx/constraintlayout/core/parser/CLObject;

    return-object v0
.end method
