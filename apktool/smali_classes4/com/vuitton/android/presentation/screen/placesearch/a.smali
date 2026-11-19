.class public final synthetic Lcom/vuitton/android/presentation/screen/placesearch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/placesearch/a;->b:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/placesearch/a;->b:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v8, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;->dc()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_1

    if-ne v0, v7, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$onCreate$1$1$1$1;

    const-string v5, "managePlaceGeocoding(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    const-string v4, "managePlaceGeocoding"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p2, v0}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;->sb()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    if-ne v0, v7, :cond_4

    :cond_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$onCreate$1$1$2$1;

    const-string v5, "managePlaceGeocoding(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    const-string v4, "managePlaceGeocoding"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance p2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p2, v0}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->r:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    iget-object p2, v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->p:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->q:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    move-object v9, v0

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_6

    if-ne v1, v7, :cond_7

    :cond_6
    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$onCreate$1$1$3$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_7
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v6, v9

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt;->b(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_8
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
