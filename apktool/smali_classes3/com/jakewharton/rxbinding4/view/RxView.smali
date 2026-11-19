.class public abstract Lcom/jakewharton/rxbinding4/view/RxView;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {}
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Landroid/view/View;)V

    return-object v0
.end method
