.class public final synthetic Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/a;->b:Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/a;->b:Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->z1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->b6(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment$onCrudAddressSuccess$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment$onCrudAddressSuccess$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
