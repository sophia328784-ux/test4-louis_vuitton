.class public Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;
.super Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;
.source "SourceFile"


# static fields
.field public static final v:Landroid/util/SparseIntArray;


# instance fields
.field public u:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->v:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0176

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->v:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->f(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    aget-object v0, v1, v2

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/EditText;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    iget-object p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->r:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    aget-object p1, v1, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0146

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter p0

    const-wide/16 p1, 0x4

    :try_start_0
    iput-wide p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->s:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-wide/16 v5, 0x7

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    iget-object v2, v4, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroidx/databinding/ViewDataBinding;->l(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->r:Landroid/widget/EditText;

    invoke-static {p0, v1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g(IILjava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->n(I)Z

    move-result p0

    return p0
.end method

.method public final m(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->s:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p1, Lcom/linecorp/linesdk/BR;->viewModel:I

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/databinding/BaseObservable;->b:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, p0, p1}, Landroidx/databinding/CallbackRegistry;->c(Landroidx/databinding/BaseObservable;I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final n(I)Z
    .locals 4

    sget v0, Lcom/linecorp/linesdk/BR;->_all:I

    if-ne p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBindingImpl;->u:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
