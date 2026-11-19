.class public final synthetic Lhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/DatePickerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DatePickerState;I)V
    .locals 0

    iput p2, p0, Lhs;->b:I

    iput-object p1, p0, Lhs;->c:Landroidx/compose/material3/DatePickerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lhs;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lhs;->c:Landroidx/compose/material3/DatePickerState;

    invoke-interface {p0, v0, v1}, Landroidx/compose/material3/DatePickerState;->a(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lhs;->c:Landroidx/compose/material3/DatePickerState;

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Landroidx/compose/material3/DatePickerState;->e(Ljava/lang/Long;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/material3/DisplayMode;

    iget p1, p1, Landroidx/compose/material3/DisplayMode;->a:I

    iget-object p0, p0, Lhs;->c:Landroidx/compose/material3/DatePickerState;

    invoke-interface {p0, p1}, Landroidx/compose/material3/DatePickerState;->f(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
