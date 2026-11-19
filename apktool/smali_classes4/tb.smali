.class public final synthetic Ltb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableLongState;I)V
    .locals 0

    iput p2, p0, Ltb;->b:I

    iput-object p1, p0, Ltb;->c:Landroidx/compose/runtime/MutableLongState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ltb;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Ltb;->c:Landroidx/compose/runtime/MutableLongState;

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableLongState;->D(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-long v0, p1

    iget-object p0, p0, Ltb;->c:Landroidx/compose/runtime/MutableLongState;

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableLongState;->D(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-long v0, p1

    iget-object p0, p0, Ltb;->c:Landroidx/compose/runtime/MutableLongState;

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableLongState;->D(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
