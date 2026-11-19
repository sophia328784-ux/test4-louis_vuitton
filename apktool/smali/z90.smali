.class public final synthetic Lz90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/impl/LiveDataObservable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;I)V
    .locals 0

    iput p2, p0, Lz90;->b:I

    iput-object p1, p0, Lz90;->c:Landroidx/camera/core/impl/LiveDataObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lz90;->b:I

    iget-object p0, p0, Lz90;->c:Landroidx/camera/core/impl/LiveDataObservable;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable;->c:Lzi;

    if-nez v0, :cond_0

    new-instance v0, Lzi;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lzi;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable;->c:Lzi;

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable;->c:Lzi;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable;->c:Lzi;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
