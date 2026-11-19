.class public final synthetic Lmc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lmc0;->b:I

    iput-object p1, p0, Lmc0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget v0, p0, Lmc0;->b:I

    iget-object p0, p0, Lmc0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/webkit/JsPromptResult;

    invoke-static {p0, p1, p2}, Lcom/batch/android/r0/h$a;->f(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/c0/a;

    invoke-static {p0, p1, p2}, Lcom/batch/android/c0/a;->r(Lcom/batch/android/c0/a;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, p2}, Lcom/sightcall/sharemedia/ShareMediaDialog;->a(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-result-object v0

    if-ltz p2, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result v3

    if-gt p2, v3, :cond_0

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->n:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    :goto_0
    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    invoke-static {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->q(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sightcall/pratik/Result;

    invoke-static {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->s(Lcom/sightcall/pratik/Result;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
