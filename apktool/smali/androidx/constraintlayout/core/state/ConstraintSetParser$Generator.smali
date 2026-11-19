.class Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/ConstraintSetParser$GeneratedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/ConstraintSetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Generator"
.end annotation


# instance fields
.field public a:F

.field public b:F


# virtual methods
.method public final value()F
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;->b:F

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;->b:F

    return v0
.end method
