.class public final synthetic Lfw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lfw0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfw0;->d:F

    iput-object p2, p0, Lfw0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;FI)V
    .locals 0

    .line 11
    iput p3, p0, Lfw0;->b:I

    iput-object p1, p0, Lfw0;->c:Ljava/lang/Object;

    iput p2, p0, Lfw0;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lfw0;->b:I

    iget-object v1, p0, Lfw0;->c:Ljava/lang/Object;

    iget p0, p0, Lfw0;->d:F

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    :cond_0
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object v0

    :pswitch_0
    check-cast v1, Landroidx/compose/ui/unit/Density;

    sget v0, Landroidx/compose/material3/SheetDefaultsKt;->a:F

    invoke-interface {v1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v1, Landroidx/compose/ui/unit/Density;

    sget v0, Landroidx/compose/material3/SheetDefaultsKt;->a:F

    invoke-interface {v1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
