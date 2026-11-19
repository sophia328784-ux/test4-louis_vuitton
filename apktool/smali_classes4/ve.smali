.class public final synthetic Lve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/focus/FocusManager;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lve;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lve;->d:Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lve;->c:Landroidx/compose/ui/focus/FocusManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 11
    iput p3, p0, Lve;->b:I

    iput-object p1, p0, Lve;->c:Landroidx/compose/ui/focus/FocusManager;

    iput-object p2, p0, Lve;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lve;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lve;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object p0, p0, Lve;->c:Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lve;->c:Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {v1, v0}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    iget-object p0, p0, Lve;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lve;->c:Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {v1, v0}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    iget-object p0, p0, Lve;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    const/4 v0, 0x0

    iget-object v1, p0, Lve;->c:Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {v1, v0}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    iget-object p0, p0, Lve;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
