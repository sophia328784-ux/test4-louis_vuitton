.class public final synthetic Landroidx/compose/foundation/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/text/HeightInLinesNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/e;->b:I

    iput-object p1, p0, Landroidx/compose/foundation/text/e;->c:Landroidx/compose/foundation/text/HeightInLinesNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/text/e;->b:I

    const-string v1, "Font resolution state is not set."

    iget-object p0, p0, Landroidx/compose/foundation/text/e;->c:Landroidx/compose/foundation/text/HeightInLinesNode;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->w:Landroidx/compose/runtime/State;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {v1}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->w:Landroidx/compose/runtime/State;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {v1}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
