.class public final synthetic Ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;ZLcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Ld;->c:Z

    iput-object p3, p0, Ld;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;ZI)V
    .locals 0

    .line 13
    iput p4, p0, Ld;->b:I

    iput-object p1, p0, Ld;->d:Ljava/lang/Object;

    iput-object p2, p0, Ld;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Ld;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Ld;->b:I

    iput-boolean p1, p0, Ld;->c:Z

    iput-object p2, p0, Ld;->d:Ljava/lang/Object;

    iput-object p3, p0, Ld;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld;->b:I

    iget-boolean v1, p0, Ld;->c:Z

    iget-object v2, p0, Ld;->e:Ljava/lang/Object;

    iget-object p0, p0, Ld;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v2, Ljava/lang/String;

    xor-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v2, Landroidx/navigation3/runtime/NavBackStack;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;

    invoke-static {v2, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->K(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeItemKt;->a:F

    if-nez v1, :cond_1

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/navigation/NavHostController;

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()Z

    if-eqz v1, :cond_3

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u2()V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/ui/focus/FocusManager;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    invoke-interface {p0, v2, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->Z1(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
