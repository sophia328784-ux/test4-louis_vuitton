.class public Lcom/batch/android/l/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/batch/android/k/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/l/e;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/batch/android/l/e;->d:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method private a(Lcom/batch/android/BatchUserAttribute;)Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p1, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->DATE:Lcom/batch/android/BatchUserAttribute$Type;

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/batch/android/R$string;->com_batchsdk_debug_date_format:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    invoke-virtual {p1}, Lcom/batch/android/BatchUserAttribute;->getDateValue()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    iget-object p0, p1, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/batch/android/l/e;Lcom/batch/android/BatchUserAttribute;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/batch/android/l/e;->a(Lcom/batch/android/BatchUserAttribute;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/l/e;->d:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/batch/android/l/e;->d:Landroid/widget/ArrayAdapter;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/batch/android/l/e;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/batch/android/l/e;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/batch/android/l/e;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/batch/android/l/e$a;

    invoke-direct {v1, p0}, Lcom/batch/android/l/e$a;-><init>(Lcom/batch/android/l/e;)V

    invoke-static {v0, v1}, Lcom/batch/android/Batch$User;->fetchAttributes(Landroid/content/Context;Lcom/batch/android/BatchAttributesFetchListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/l/e;)Lcom/batch/android/k/a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/batch/android/l/e;->e:Lcom/batch/android/k/a;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/l/e;->e:Lcom/batch/android/k/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/batch/android/k/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/k/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/l/e;->e:Lcom/batch/android/k/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/k/a;->a()V

    iget-object v0, p0, Lcom/batch/android/l/e;->e:Lcom/batch/android/k/a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/batch/android/l/e;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/batch/android/l/e;->e:Lcom/batch/android/k/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/batch/android/l/e$b;

    invoke-direct {v1, p0}, Lcom/batch/android/l/e$b;-><init>(Lcom/batch/android/l/e;)V

    invoke-static {v0, v1}, Lcom/batch/android/Batch$User;->fetchTagCollections(Landroid/content/Context;Lcom/batch/android/BatchTagCollectionsFetchListener;)V

    return-void
.end method

.method public static c()Lcom/batch/android/l/e;
    .locals 1

    new-instance v0, Lcom/batch/android/l/e;

    invoke-direct {v0}, Lcom/batch/android/l/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/batch/android/l/e;->a:Landroid/widget/TextView;

    if-nez p1, :cond_0

    sget p1, Lcom/batch/android/R$string;->com_batchsdk_debug_view_empty:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/batch/android/l/e;->a()V

    invoke-direct {p0}, Lcom/batch/android/l/e;->b()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/batch/android/R$layout;->com_batchsdk_user_data_debug_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/batch/android/R$id;->com_batchsdk_user_data_debug_fragment_user_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/batch/android/l/e;->a:Landroid/widget/TextView;

    sget p2, Lcom/batch/android/R$id;->com_batchsdk_user_data_debug_fragment_attribute_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/batch/android/l/e;->b:Landroid/widget/ListView;

    sget p2, Lcom/batch/android/R$id;->com_batchsdk_user_data_debug_fragment_collection_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/batch/android/l/e;->c:Landroid/widget/ListView;

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
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
