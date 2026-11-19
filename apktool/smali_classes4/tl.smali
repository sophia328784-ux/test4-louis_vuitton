.class public final synthetic Ltl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p2, p0, Ltl;->b:I

    iput-object p1, p0, Ltl;->c:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ltl;->b:I

    iget-object p0, p0, Ltl;->c:Landroidx/navigation/NavHostController;

    const/4 v1, 0x6

    const/4 v2, 0x0

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object v2

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "owner"

    invoke-virtual {v0, p1, v3}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p1}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "keyword"

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;

    invoke-static {p0, p1, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
