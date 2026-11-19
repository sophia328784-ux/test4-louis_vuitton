.class public final synthetic Lqb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;I)V
    .locals 0

    iput p2, p0, Lqb0;->b:I

    iput-object p1, p0, Lqb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lqb0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lqb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->f0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    iget-object p0, p0, Lqb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lqb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->k2(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
