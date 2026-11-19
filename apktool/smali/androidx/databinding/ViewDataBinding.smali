.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$LiveDataListener;
    }
.end annotation


# static fields
.field public static final n:Z = true

.field public static final o:Landroidx/databinding/ViewDataBinding$4;

.field public static final p:Ljava/lang/ref/ReferenceQueue;

.field public static final q:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final c:Ljava/lang/Runnable;

.field public d:Z

.field public final e:[Landroidx/databinding/WeakListener;

.field public final f:Landroid/view/View;

.field public g:Z

.field public final h:Landroid/view/Choreographer;

.field public final i:Landroid/view/Choreographer$FrameCallback;

.field public final j:Landroid/os/Handler;

.field public k:Landroidx/fragment/app/Fragment;

.field public l:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->o:Landroidx/databinding/ViewDataBinding$4;

    new-instance v0, Landroidx/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroidx/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->p:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->q:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->b(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    new-instance p1, Landroidx/databinding/ViewDataBinding$7;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$7;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->c:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    new-array p1, p3, [Landroidx/databinding/WeakListener;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->h:Landroid/view/Choreographer;

    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer$FrameCallback;

    return-void

    :cond_0
    const-string p0, "DataBinding must be created in view\'s UI Thread"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroidx/databinding/DataBindingComponent;

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/databinding/DataBindingComponent;

    return-object p0

    :cond_1
    const-string p0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->b(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    sget-object v1, Landroidx/databinding/DataBindingUtil;->a:Landroidx/databinding/DataBinderMapper;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, v0, p0, p1}, Landroidx/databinding/DataBinderMapper;->b(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f0a0146

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ViewDataBinding;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    if-eqz p4, :cond_7

    if-eqz v0, :cond_7

    const-string p4, "layout"

    invoke-virtual {v0, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    const/16 p4, 0x5f

    invoke-virtual {v0, p4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p4

    if-lez p4, :cond_9

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p4, :cond_3

    goto :goto_4

    :cond_3
    move v3, p4

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge p4, v2, :cond_6

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_6
    aget-object p4, p2, v3

    if-nez p4, :cond_a

    aput-object p1, p2, v3

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_9

    const-string p4, "binding_"

    invoke-virtual {v0, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v2, 0x8

    move v3, v1

    :goto_3
    if-ge v2, p4, :cond_8

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    aget-object p4, p2, v3

    if-nez p4, :cond_a

    aput-object p1, p2, v3

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    if-lez p4, :cond_a

    if-eqz p3, :cond_a

    const/4 v0, -0x1

    invoke-virtual {p3, p4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p4

    if-ltz p4, :cond_a

    aget-object v0, p2, p4

    if-nez v0, :cond_a

    aput-object p1, p2, p4

    :cond_a
    :goto_5
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_b

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    move v0, v1

    :goto_6
    if-ge v0, p4, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2, p2, p3, v1}, Landroidx/databinding/ViewDataBinding;->f(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public abstract g(IILjava/lang/Object;)Z
.end method

.method public final i(ILandroidx/lifecycle/MutableLiveData;Landroidx/databinding/CreateWeakListener;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    sget-object v1, Landroidx/databinding/ViewDataBinding;->p:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p3, p0, p1, v1}, Landroidx/databinding/CreateWeakListener;->a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->k:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    iget-object p1, v1, Landroidx/databinding/WeakListener;->a:Landroidx/databinding/ObservableReference;

    invoke-interface {p1, p0}, Landroidx/databinding/ObservableReference;->a(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    invoke-virtual {v1}, Landroidx/databinding/WeakListener;->a()Z

    iput-object p2, v1, Landroidx/databinding/WeakListener;->c:Ljava/lang/Object;

    iget-object p0, v1, Landroidx/databinding/WeakListener;->a:Landroidx/databinding/ObservableReference;

    invoke-interface {p0, p2}, Landroidx/databinding/ObservableReference;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->k:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->h:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k(Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->k:Landroidx/fragment/app/Fragment;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->k:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding$OnStartListener;

    :cond_2
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroidx/databinding/WeakListener;->a:Landroidx/databinding/ObservableReference;

    invoke-interface {v2, p1}, Landroidx/databinding/ObservableReference;->a(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final l(ILandroidx/lifecycle/MutableLiveData;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBinding;->o:Landroidx/databinding/ViewDataBinding$4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    if-nez p2, :cond_0

    :try_start_1
    aget-object p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->a()Z

    goto :goto_0

    :cond_0
    aget-object v2, v2, p1

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->i(ILandroidx/lifecycle/MutableLiveData;Landroidx/databinding/CreateWeakListener;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroidx/databinding/WeakListener;->c:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/databinding/WeakListener;->a()Z

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->i(ILandroidx/lifecycle/MutableLiveData;Landroidx/databinding/CreateWeakListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    throw p1
.end method
