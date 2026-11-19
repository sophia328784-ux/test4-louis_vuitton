.class public final synthetic Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v1, v10, :cond_2

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$5$1$1;

    const-string v8, "upsertAddress()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const-string v7, "upsertAddress"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/b;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_3

    if-ne v0, v10, :cond_4

    :cond_3
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$5$2$1;

    const-string v8, "show()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v7, "show"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_4
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v1, v0, p1, v2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt;->b(Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
