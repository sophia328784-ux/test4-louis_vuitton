.class public abstract Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/libraries/archi/nucleus/ViewHolder$BadLayoutTypeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005*\u0001\u001c\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001*B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0019\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000bB\u0019\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ)\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000c\u0010#\u001a\u00020\u001f*\u00020\u0018H$J\u0008\u0010$\u001a\u00020\u001fH\u0014J\u000e\u0010%\u001a\u00020&2\u0006\u0010\u0014\u001a\u00020\u0002J\u001f\u0010\'\u001a\u0002H\u0001\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0004\u00a2\u0006\u0002\u0010(J!\u0010)\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0004\u00a2\u0006\u0002\u0010(R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00028\u0000X\u0084\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0014\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0012R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001d\u00a8\u0006+"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/nucleus/ViewHolder;",
        "V",
        "Landroid/view/View;",
        "",
        "contentView",
        "<init>",
        "(Landroid/view/View;)V",
        "context",
        "Landroid/content/Context;",
        "resId",
        "",
        "(Landroid/content/Context;I)V",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;I)V",
        "getContext",
        "()Landroid/content/Context;",
        "getContentView",
        "()Landroid/view/View;",
        "Landroid/view/View;",
        "view",
        "getView",
        "Ljava/lang/ref/WeakReference;",
        "disposables",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "inflate",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;",
        "attachStateChangeListener",
        "com/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1",
        "Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;",
        "initView",
        "",
        "addOnRootView",
        "removeFromRootView",
        "bringToFront",
        "startInteractions",
        "buildContentView",
        "holdsViewInstance",
        "",
        "findViewById",
        "(I)Landroid/view/View;",
        "findOptionalViewById",
        "BadLayoutTypeException",
        "archi_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final attachStateChangeListener:Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

.field private final contentView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 46
    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;-><init>(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->attachStateChangeListener:Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 47
    invoke-static/range {v1 .. v6}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->inflate$default(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;Landroid/content/Context;Landroid/view/ViewGroup;IILjava/lang/Object;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v1, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    const/4 p0, 0x0

    .line 48
    iput-object p0, v1, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->rootView:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-direct {v1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 52
    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;-><init>(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->attachStateChangeListener:Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    .line 53
    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->rootView:Ljava/lang/ref/WeakReference;

    .line 55
    invoke-direct {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;-><init>(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->attachStateChangeListener:Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->rootView:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->initView()V

    return-void
.end method

.method public static final synthetic access$getDisposables$p(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method private final inflate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$BadLayoutTypeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$BadLayoutTypeException;-><init>(Ljava/lang/Class;)V

    throw p1
.end method

.method public static synthetic inflate$default(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;Landroid/content/Context;Landroid/view/ViewGroup;IILjava/lang/Object;)Landroid/view/View;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: inflate"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final initView()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->attachStateChangeListener:Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final addOnRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->addOnRootView(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    return-object p0

    .line 31
    :cond_1
    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    .line 32
    invoke-virtual {v0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-object p0
.end method

.method public final addOnRootView(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0

    :cond_0
    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public final bringToFront()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->rootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->bringToFront(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    return-object p0

    .line 44
    :cond_1
    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    .line 45
    invoke-virtual {v0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-object p0
.end method

.method public final bringToFront(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->addOnRootView(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    return-object p0

    :cond_1
    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-object p0
.end method

.method public buildContentView()V
    .locals 0

    return-void
.end method

.method public final findOptionalViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public final holdsViewInstance(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeFromRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-object p0
.end method

.method public abstract startInteractions(Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
.end method
