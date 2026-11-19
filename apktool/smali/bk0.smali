.class public final synthetic Lbk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/internal/FloatProducer;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/FloatProducer;I)V
    .locals 0

    iput p2, p0, Lbk0;->b:I

    iput-object p1, p0, Lbk0;->c:Landroidx/compose/material3/internal/FloatProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lbk0;->b:I

    iget-object p0, p0, Lbk0;->c:Landroidx/compose/material3/internal/FloatProducer;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/compose/material3/TextFieldKt;->a:I

    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    sget v1, Landroidx/compose/material3/internal/TextFieldImplKt;->g:F

    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p0

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object v0

    :pswitch_0
    sget v0, Landroidx/compose/material3/OutlinedTextFieldKt;->a:F

    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    sget v1, Landroidx/compose/material3/internal/TextFieldImplKt;->g:F

    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p0

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
