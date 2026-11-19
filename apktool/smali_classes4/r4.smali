.class public final synthetic Lr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p4, p0, Lr4;->b:I

    iput-object p1, p0, Lr4;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iput-object p2, p0, Lr4;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lr4;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lr4;->b:I

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x2

    iget-object v3, p0, Lr4;->e:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lr4;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lr4;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const/4 v5, 0x1

    const/4 v6, 0x0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Lt4;

    invoke-direct {v2, p0, v4, v6}, Lt4;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v2, p1, v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt;->c(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    move v0, v6

    :goto_2
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5

    if-ne v2, v1, :cond_6

    :cond_5
    new-instance v2, Lt4;

    invoke-direct {v2, p0, v4, v5}, Lt4;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v2, p1, v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt;->c(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
