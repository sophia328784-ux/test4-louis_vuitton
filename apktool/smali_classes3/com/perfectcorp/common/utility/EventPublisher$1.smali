.class Lcom/perfectcorp/common/utility/EventPublisher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Iterable;

.field private synthetic b:Lcom/perfectcorp/common/utility/EventPublisher$Publisher;

.field private synthetic c:Lcom/perfectcorp/common/utility/EventPublisher;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/EventPublisher;Ljava/lang/Iterable;Lcom/perfectcorp/common/utility/EventPublisher$Publisher;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/utility/EventPublisher$1;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    iput-object p2, p0, Lcom/perfectcorp/common/utility/EventPublisher$1;->a:Ljava/lang/Iterable;

    iput-object p3, p0, Lcom/perfectcorp/common/utility/EventPublisher$1;->b:Lcom/perfectcorp/common/utility/EventPublisher$Publisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/common/utility/EventPublisher$1;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;

    iget-object v2, p0, Lcom/perfectcorp/common/utility/EventPublisher$1;->b:Lcom/perfectcorp/common/utility/EventPublisher$Publisher;

    invoke-interface {v2, v1}, Lcom/perfectcorp/common/utility/EventPublisher$Publisher;->a(Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;)V

    goto :goto_0

    :cond_0
    return-void
.end method
