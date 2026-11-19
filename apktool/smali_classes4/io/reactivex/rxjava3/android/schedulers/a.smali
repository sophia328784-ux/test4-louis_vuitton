.class public final synthetic Lio/reactivex/rxjava3/android/schedulers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->a:Lio/reactivex/rxjava3/core/Scheduler;

    sget-object p0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers$MainHolder;->a:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method
