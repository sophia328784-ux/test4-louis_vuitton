.class public final synthetic Ln61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V
    .locals 0

    iput p3, p0, Ln61;->b:I

    iput-object p1, p0, Ln61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iput-object p2, p0, Ln61;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Ln61;->b:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, p0, Ln61;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object p0, p0, Ln61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    packed-switch v0, :pswitch_data_0

    move-object v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p2, 0x11

    if-eq p1, v1, :cond_0

    move v2, v3

    :cond_0
    and-int/lit8 p1, p2, 0x1

    invoke-interface {v10, p1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const p1, 0x7f140cb4

    invoke-static {v10, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const p1, 0x7f140cb5

    invoke-static {v10, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    new-instance p2, Ll61;

    const/16 p1, 0xb

    invoke-direct {p2, p0, p1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-interface {v10, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v8, p2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    if-ne p2, v4, :cond_4

    :cond_3
    new-instance p2, Lo61;

    invoke-direct {p2, p0, v5}, Lo61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-interface {v10, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v9, p2

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/CancelProductCustomizationBottomSheetKt;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_5
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v1, :cond_6

    move p1, v3

    goto :goto_1

    :cond_6
    move p1, v2

    :goto_1
    and-int/2addr p3, v3

    invoke-interface {p2, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_7

    if-ne p3, v4, :cond_8

    :cond_7
    new-instance p3, Ll61;

    const/16 p1, 0xc

    invoke-direct {p3, p0, p1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p1, v0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_9

    if-ne v0, v4, :cond_a

    :cond_9
    new-instance v0, Lo61;

    invoke-direct {v0, v5, p0}, Lo61;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0, p2, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/bottomsheets/ExitWarningBottomSheetContentKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_b
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
