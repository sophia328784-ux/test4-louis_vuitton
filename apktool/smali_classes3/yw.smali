.class public final synthetic Lyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;

.field public final synthetic d:Lcom/perfectcorp/common/network/RequestTask$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;Lcom/perfectcorp/common/network/RequestTask$Builder;I)V
    .locals 0

    iput p3, p0, Lyw;->b:I

    iput-object p1, p0, Lyw;->c:Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;

    iput-object p2, p0, Lyw;->d:Lcom/perfectcorp/common/network/RequestTask$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lyw;->b:I

    const-string v1, "priority can\'t be null"

    iget-object v2, p0, Lyw;->d:Lcom/perfectcorp/common/network/RequestTask$Builder;

    iget-object p0, p0, Lyw;->c:Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v2, Lcom/perfectcorp/common/network/RequestTask$Builder;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    const/4 v1, 0x3

    const-string v3, "RequestTask"

    const-string v4, "[start] start"

    invoke-static {v1, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p0, v0}, Lcom/perfectcorp/common/network/RequestTask$Builder;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lct0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lct0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    const-string p0, "[start] end"

    invoke-static {v1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v2, Lcom/perfectcorp/common/network/RequestTask$Builder;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v2, p0, v0}, Lcom/perfectcorp/common/network/RequestTask$Builder;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
