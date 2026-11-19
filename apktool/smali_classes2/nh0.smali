.class public final synthetic Lnh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V
    .locals 0

    iput p2, p0, Lnh0;->b:I

    iput-object p1, p0, Lnh0;->c:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lnh0;->b:I

    iget-object p0, p0, Lnh0;->c:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->r(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

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

    :pswitch_0
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    const v0, 0x7f0a03b2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
