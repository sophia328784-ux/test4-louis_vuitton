.class public final synthetic Lbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p4, p0, Lbl;->b:I

    iput-object p1, p0, Lbl;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p2, p0, Lbl;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lbl;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lbl;->b:I

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v2, p0, Lbl;->e:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    packed-switch v0, :pswitch_data_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, p0, Lbl;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean p1, v4, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz p1, :cond_2

    const p1, 0x39a483f8

    invoke-interface {v9, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ltf0;

    const/16 p1, 0x13

    invoke-direct {v0, v2, p1}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/16 v11, 0x31

    const/4 v3, 0x0

    iget-object v5, p0, Lbl;->d:Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_2
    const p0, 0x39a8cfdd

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, p0, Lbl;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean p1, v4, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz p1, :cond_5

    const p1, -0x70921999

    invoke-interface {v9, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Ltf0;

    const/16 p1, 0x8

    invoke-direct {v0, v2, p1}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/high16 v10, 0x30000

    const/16 v11, 0x11

    const/4 v3, 0x0

    iget-object v5, p0, Lbl;->d:Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const-string v8, "personalSelections_contactUs_button"

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    const p0, -0x708d06bf

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, p0, Lbl;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean p1, v4, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz p1, :cond_8

    const p1, 0x5c29c014

    invoke-interface {v9, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_6

    if-ne v0, v1, :cond_7

    :cond_6
    new-instance v0, Lu8;

    const/16 p1, 0xa

    invoke-direct {v0, v2, p1}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/16 v11, 0x31

    const/4 v3, 0x0

    iget-object v5, p0, Lbl;->d:Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_8
    const p0, 0x5c2e2dc2

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
