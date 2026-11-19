.class public final synthetic Llk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FFILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Llk;->b:I

    iput-object p4, p0, Llk;->e:Ljava/lang/Object;

    iput p1, p0, Llk;->c:F

    iput p2, p0, Llk;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Llk;->b:I

    const-string v1, "contactUsNavigator"

    const-string v2, "chatAttachable"

    iget v3, p0, Llk;->d:F

    iget v4, p0, Llk;->c:F

    iget-object p0, p0, Llk;->e:Ljava/lang/Object;

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-int v9, v4

    float-to-int v10, v3

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->K:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v11, :cond_0

    invoke-virtual/range {v6 .. v11}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-int v9, v4

    float-to-int v10, v3

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->K:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v11, :cond_2

    invoke-virtual/range {v6 .. v11}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    move-object v7, p0

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->v:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v6, :cond_5

    float-to-int v9, v4

    float-to-int v10, v3

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->t:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v11, :cond_4

    invoke-virtual/range {v6 .. v11}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-int v9, v4

    float-to-int v10, v3

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v11, :cond_6

    invoke-virtual/range {v6 .. v11}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->N:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-int v9, v4

    float-to-int v10, v3

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->K:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v11, :cond_8

    invoke-virtual/range {v6 .. v11}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_4
    move-object v7, p0

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    if-eqz v6, :cond_b

    float-to-int v9, v4

    float-to-int v10, v3

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->s:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz v11, :cond_a

    invoke-virtual/range {v6 .. v11}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
