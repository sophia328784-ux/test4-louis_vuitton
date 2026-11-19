.class public final synthetic Lbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lbx;->b:I

    iput-object p1, p0, Lbx;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbx;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lbx;->b:I

    iget-object v1, p0, Lbx;->c:Ljava/lang/Object;

    iget-object p0, p0, Lbx;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/m0/a;

    check-cast v1, Lcom/batch/android/g0/c$a;

    invoke-static {p0, v1, p1}, Lcom/batch/android/m0/a;->d(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$a;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;

    check-cast v1, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    invoke-static {p0, v1, p1}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->q(Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->Z:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->c0(Ljava/lang/String;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;

    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->f:I

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_1
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    if-eq p0, v0, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_3
    check-cast p0, Lcom/linecorp/linesdk/widget/LoginButton;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-static {p0, v1, p1}, Lcom/linecorp/linesdk/widget/LoginButton;->g(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->Y:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_2
    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->G0(Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->Y:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_3
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->c0(Ljava/lang/String;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_4
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/pdf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
