.class public final synthetic Lcom/google/firebase/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/firebase/inject/Provider;

.field public final synthetic d:Lcom/google/firebase/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/components/b;->b:I

    iput-object p1, p0, Lcom/google/firebase/components/b;->d:Lcom/google/firebase/inject/Provider;

    iput-object p2, p0, Lcom/google/firebase/components/b;->c:Lcom/google/firebase/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/firebase/components/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/components/b;->d:Lcom/google/firebase/inject/Provider;

    check-cast v0, Lcom/google/firebase/components/LazySet;

    iget-object p0, p0, Lcom/google/firebase/components/b;->c:Lcom/google/firebase/inject/Provider;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->b:Ljava/util/Set;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->b:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/components/b;->d:Lcom/google/firebase/inject/Provider;

    check-cast v0, Lcom/google/firebase/components/OptionalProvider;

    iget-object p0, p0, Lcom/google/firebase/components/b;->c:Lcom/google/firebase/inject/Provider;

    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->b:Lcom/google/firebase/inject/Provider;

    sget-object v2, Lcom/google/firebase/components/OptionalProvider;->d:Lln;

    if-ne v1, v2, :cond_1

    monitor-enter v0

    :try_start_2
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object p0, v0, Lcom/google/firebase/components/OptionalProvider;->b:Lcom/google/firebase/inject/Provider;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1, p0}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->g(Lcom/google/firebase/inject/Provider;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    const-string p0, "provide() can be called only once."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
