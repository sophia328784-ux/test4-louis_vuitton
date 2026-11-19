.class public final synthetic Lkf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;I)V
    .locals 0

    iput p3, p0, Lkf0;->b:I

    iput-object p1, p0, Lkf0;->c:Landroid/content/Context;

    iput-object p2, p0, Lkf0;->d:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkf0;->b:I

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lkf0;->d:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object p0, p0, Lkf0;->c:Landroid/content/Context;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/utils/SemanticUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/utils/SemanticUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    :cond_4
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/utils/SemanticUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    :cond_6
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/utils/SemanticUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
