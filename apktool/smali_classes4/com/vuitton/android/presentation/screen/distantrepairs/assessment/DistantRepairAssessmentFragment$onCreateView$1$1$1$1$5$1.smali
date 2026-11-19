.class final synthetic Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$onCreateView$1$1$1$1$5$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->o0(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;

    invoke-direct {v2, v0, p1}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;-><init>(ZLjava/lang/String;)V

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;Landroidx/fragment/app/FragmentActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->K:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p1, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
