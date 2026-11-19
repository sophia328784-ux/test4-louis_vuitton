.class public final Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/archi/nucleus/ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "p0",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
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
.field final synthetic this$0:Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-virtual {p1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->buildContentView()V

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->access$getDisposables$p(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->startInteractions(Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->access$getDisposables$p(Lcom/sightcall/libraries/archi/nucleus/ViewHolder;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->d()V

    return-void
.end method
