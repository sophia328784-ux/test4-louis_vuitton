.class public final synthetic Leh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SheetState;

.field public final synthetic d:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic e:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic f:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;I)V
    .locals 0

    iput p5, p0, Leh;->b:I

    iput-object p1, p0, Leh;->c:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Leh;->d:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p3, p0, Leh;->e:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p4, p0, Leh;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Leh;->b:I

    iget-object v1, p0, Leh;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v2, p0, Leh;->e:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v3, p0, Leh;->d:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object p0, p0, Leh;->c:Landroidx/compose/material3/SheetState;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/compose/material3/ModalBottomSheetKt;->a:F

    iput-object v3, p0, Landroidx/compose/material3/SheetState;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object v2, p0, Landroidx/compose/material3/SheetState;->g:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object v1, p0, Landroidx/compose/material3/SheetState;->d:Landroidx/compose/animation/core/AnimationSpec;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iput-object v3, p0, Landroidx/compose/material3/SheetState;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object v2, p0, Landroidx/compose/material3/SheetState;->g:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object v1, p0, Landroidx/compose/material3/SheetState;->d:Landroidx/compose/animation/core/AnimationSpec;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
