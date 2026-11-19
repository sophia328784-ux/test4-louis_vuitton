.class public Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/ConstraintSetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutVariables"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/parser/CLElement;)F
    .locals 2

    instance-of v0, p1, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/constraintlayout/core/parser/CLString;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$GeneratedValue;

    invoke-interface {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$GeneratedValue;->value()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result p0

    return p0

    :cond_1
    instance-of p0, p1, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz p0, :cond_2

    check-cast p1, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLNumber;->i()F

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
