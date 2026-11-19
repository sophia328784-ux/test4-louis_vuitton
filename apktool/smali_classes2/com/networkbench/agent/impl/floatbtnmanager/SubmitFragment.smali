.class public Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$a;
    }
.end annotation


# static fields
.field private static d:Landroid/graphics/Bitmap; = null

.field private static final e:Ljava/lang/String; = "select.png"

.field private static final f:Lcom/networkbench/agent/impl/c/e;

.field private static g:Lcom/networkbench/agent/impl/floatbtnmanager/p;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/networkbench/agent/impl/floatbtnmanager/l;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$1;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->c()I

    move-result p0

    return p0
.end method

.method public static synthetic a()Lcom/networkbench/agent/impl/floatbtnmanager/p;
    .locals 1

    .line 52
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object v0, v0, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "<br>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->j:Landroid/widget/TextView;

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object v0, v0, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/a;->i()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object v1, v1, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/a;->j()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->a(I)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)Lcom/networkbench/agent/impl/floatbtnmanager/l;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->c:Lcom/networkbench/agent/impl/floatbtnmanager/l;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$3;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget p0, Lcom/networkbench/R$string;->action_tip_show_select_total:I

    return p0

    :cond_0
    if-eqz v0, :cond_1

    sget p0, Lcom/networkbench/R$string;->action_tip_show_select_content:I

    return p0

    :cond_1
    if-eqz p0, :cond_2

    sget p0, Lcom/networkbench/R$string;->action_tip_show_select_position:I

    return p0

    :cond_2
    sget p0, Lcom/networkbench/R$string;->action_tip_show_default:I

    return p0
.end method

.method private d()V
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "select.png"

    invoke-static {p0, v3, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->d:Landroid/graphics/Bitmap;

    invoke-static {p0, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->h(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    :try_start_0
    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/ActionFloatingViewItem;->c:Landroid/graphics/Bitmap;

    sput-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->d:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "viewid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "selectInfo appId:selectInfo.actionFeatures invoke"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actionFetures"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/a/a;

    iput-object v0, p1, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    new-instance p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$2;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$2;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->c:Lcom/networkbench/agent/impl/floatbtnmanager/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error onAttach"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/networkbench/R$id;->btn_upload:I

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    const-string v0, "ID\u4e3a\u7a7a\uff0c \u8bf7\u8bbe\u7f6e\u76f8\u5e94\u63a7\u4ef6ID"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->d()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$a;

    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object v2, v2, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->h:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/data/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v1, p0, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$a;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_2

    :cond_2
    sget v1, Lcom/networkbench/R$id;->tv_cancle:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_3
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "error onClick"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :goto_3
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->a:Landroid/content/Context;

    sget p3, Lcom/networkbench/R$layout;->operation_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/networkbench/R$id;->tv_page_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/networkbench/R$string;->current_page_tag:I

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/networkbench/R$id;->iv_action_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget-object p3, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget p2, Lcom/networkbench/R$id;->et_action_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->b:Landroid/widget/EditText;

    sget p2, Lcom/networkbench/R$id;->btn_upload:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/networkbench/R$id;->tv_cancle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "\u70b9\u51fb"

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->a:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {p3, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p2, 0x1090009

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    sget p2, Lcom/networkbench/R$id;->spinner_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget p2, Lcom/networkbench/R$id;->tv_action_show:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object p3, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$4;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$4;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget p2, Lcom/networkbench/R$id;->tv_tip_show:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->j:Landroid/widget/TextView;

    sget p2, Lcom/networkbench/R$string;->action_tip_show_default:I

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->a(I)V

    sget p2, Lcom/networkbench/R$id;->cb_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->h:Landroid/widget/CheckBox;

    sget-object p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object p2, p2, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    const/4 p3, 0x4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/a/a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->h:Landroid/widget/CheckBox;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->h:Landroid/widget/CheckBox;

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$5;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$5;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/networkbench/R$id;->cb_position:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->i:Landroid/widget/CheckBox;

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object v0, v0, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/networkbench/R$string;->position_pref:I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object v1, v1, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/networkbench/R$string;->position_suff:I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget-object p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object p2, p2, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/a/a;->k()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->i:Landroid/widget/CheckBox;

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$6;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$6;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/a;->k()Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->g:Lcom/networkbench/agent/impl/floatbtnmanager/p;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a:Lcom/networkbench/agent/impl/data/a/a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    return-object p1

    :cond_7
    :goto_1
    sget p0, Lcom/networkbench/R$id;->lly_filter:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_2
    sget-object p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;->f:Lcom/networkbench/agent/impl/c/e;

    const-string p3, "submitFragment error"

    invoke-interface {p2, p3, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
