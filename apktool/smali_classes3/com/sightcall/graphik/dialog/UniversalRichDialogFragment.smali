.class public final Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u001bB)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "title",
        "",
        "message",
        "actions",
        "",
        "Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;)V",
        "[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;",
        "titleView",
        "Landroid/widget/TextView;",
        "messageView",
        "actionPanel",
        "Landroid/view/ViewGroup;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "onCreateView",
        "Landroid/view/View;",
        "container",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "",
        "onViewCreated",
        "view",
        "Action",
        "graphik_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private actionPanel:Landroid/view/ViewGroup;

.field private final actions:[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

.field private inflater:Landroid/view/LayoutInflater;

.field private final message:Ljava/lang/String;

.field private messageView:Landroid/widget/TextView;

.field private final title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->actions:[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    return-void
.end method

.method private static synthetic instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->onViewCreated$lambda$1$0(Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static final onViewCreated$lambda$1$0(Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p1}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;->getHandler()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iput-object p1, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/sightcall/graphik/R$layout;->universal_rich_dialog_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/sightcall/graphik/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->titleView:Landroid/widget/TextView;

    sget p2, Lcom/sightcall/graphik/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->messageView:Landroid/widget/TextView;

    sget p2, Lcom/sightcall/graphik/R$id;->actionPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->actionPanel:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "\n"

    const-string v3, "<br>"

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->messageView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v2, Lme/saket/bettermovementmethod/BetterLinkMovementMethod;->f:Lme/saket/bettermovementmethod/BetterLinkMovementMethod;

    if-nez v2, :cond_3

    new-instance v2, Lme/saket/bettermovementmethod/BetterLinkMovementMethod;

    invoke-direct {v2}, Lme/saket/bettermovementmethod/BetterLinkMovementMethod;-><init>()V

    sput-object v2, Lme/saket/bettermovementmethod/BetterLinkMovementMethod;->f:Lme/saket/bettermovementmethod/BetterLinkMovementMethod;

    :cond_3
    sget-object v2, Lme/saket/bettermovementmethod/BetterLinkMovementMethod;->f:Lme/saket/bettermovementmethod/BetterLinkMovementMethod;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_4
    iget-object v0, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->actions:[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->inflater:Landroid/view/LayoutInflater;

    if-eqz v5, :cond_6

    sget v6, Lcom/sightcall/graphik/R$layout;->universal_dialog_action_button:I

    iget-object v7, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->actionPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v4}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;->isEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    new-instance v6, Lbx;

    const/4 v7, 0x6

    invoke-direct {v6, p0, v4, v7}, Lbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;->actionPanel:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string p0, "inflater"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
