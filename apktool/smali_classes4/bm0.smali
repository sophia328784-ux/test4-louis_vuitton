.class public final synthetic Lbm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lbm0;->b:I

    iput-object p1, p0, Lbm0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    iput-object p2, p0, Lbm0;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lbm0;->b:I

    iget-object v1, p0, Lbm0;->d:Landroidx/compose/runtime/MutableState;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;->c:Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    iget-object p0, p0, Lbm0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    invoke-static {p0, p1, v2, v0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    const-string v4, "?"

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    const/16 v9, 0x8

    iget-object v4, p0, Lbm0;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
