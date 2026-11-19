.class public final synthetic Lwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/focus/FocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusManager;I)V
    .locals 0

    iput p2, p0, Lwe;->b:I

    iput-object p1, p0, Lwe;->c:Landroidx/compose/ui/focus/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lwe;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lwe;->c:Landroidx/compose/ui/focus/FocusManager;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/foundation/text/KeyboardActionScope;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->b:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/focus/FocusDirection;->h:I

    invoke-interface {p0, p1}, Landroidx/compose/ui/focus/FocusManager;->e(I)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/foundation/text/KeyboardActionScope;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {p0, v1}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
