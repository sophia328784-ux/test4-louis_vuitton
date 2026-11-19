.class public Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;
.super Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;
.source "SourceFile"


# static fields
.field public static final A:Landroid/util/SparseIntArray;


# instance fields
.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->A:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0317

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0318

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a015d

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a015e

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a015f

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d3

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d6

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d5

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03b3

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03bf

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03b9

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 12

    sget-object v0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->A:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->f(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    const/16 v0, 0xc

    aget-object v0, v1, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/16 v0, 0xb

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v1, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    aget-object v0, v1, v2

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xf

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/CheckBox;

    const/16 v0, 0xd

    aget-object v0, v1, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0xe

    aget-object v0, v1, v0

    check-cast v0, Landroid/widget/TextView;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v11}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    const-wide/16 p0, -0x1

    iput-wide p0, v3, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    iget-object p0, v3, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->t:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    aget-object p0, v1, p0

    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->v:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->w:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p0, 0x7f0a0146

    invoke-virtual {v5, p0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter v3

    const-wide/16 p0, 0x10

    :try_start_0
    iput-wide p0, v3, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final c()V
    .locals 20

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->x:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1c

    const-wide/16 v9, 0x1a

    const-wide/16 v11, 0x19

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v6, :cond_9

    and-long v15, v2, v11

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    move-object v6, v14

    :goto_0
    invoke-virtual {v1, v13, v6}, Landroidx/databinding/ViewDataBinding;->l(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v14

    :goto_1
    and-long v15, v2, v9

    cmp-long v15, v15, v4

    if-eqz v15, :cond_3

    if-eqz v0, :cond_2

    iget-object v15, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    :goto_2
    move-wide/from16 v16, v4

    goto :goto_3

    :cond_2
    move-object v15, v14

    goto :goto_2

    :goto_3
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->l(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-wide/from16 v16, v4

    :cond_4
    move-object v4, v14

    :goto_4
    and-long v18, v2, v7

    cmp-long v5, v18, v16

    if-eqz v5, :cond_8

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    goto :goto_5

    :cond_5
    move-object v0, v14

    :goto_5
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v0}, Landroidx/databinding/ViewDataBinding;->l(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Boolean;

    :cond_6
    if-nez v14, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :cond_8
    :goto_6
    move-object v14, v4

    goto :goto_7

    :cond_9
    move-wide/from16 v16, v4

    move-object v6, v14

    :goto_7
    and-long v4, v2, v9

    cmp-long v0, v4, v16

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->t:Landroid/widget/EditText;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_a
    and-long v4, v2, v11

    cmp-long v0, v4, v16

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->v:Landroid/widget/EditText;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_b
    and-long/2addr v2, v7

    cmp-long v0, v2, v16

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, v13, :cond_c

    invoke-virtual {v0, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_c
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
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

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
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->p(I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->o(I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->n(I)Z

    move-result p0

    return p0
.end method

.method public final m(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->x:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

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
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

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

.method public final o(I)Z
    .locals 4

    sget v0, Lcom/linecorp/linesdk/BR;->_all:I

    if-ne p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

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

.method public final p(I)Z
    .locals 4

    sget v0, Lcom/linecorp/linesdk/BR;->_all:I

    if-ne p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBindingImpl;->z:J

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
