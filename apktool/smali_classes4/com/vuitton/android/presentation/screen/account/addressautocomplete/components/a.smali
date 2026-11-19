.class public final synthetic Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/a;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    and-int/2addr p3, v2

    invoke-interface {p2, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/a;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_1

    if-ne p3, v0, :cond_2

    :cond_1
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$7$6$1$1$1;

    const-string v7, "deleteAddress()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const-string v6, "deleteAddress"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p3, v2

    :cond_2
    check-cast p3, Lkotlin/reflect/KFunction;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_3

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$7$6$1$2$1;

    const-string v7, "hide(Lkotlin/jvm/functions/Function0;)V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v6, "hide"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v2

    :cond_4
    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, p1, p2, v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/components/DeleteAddressBottomSheetKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
