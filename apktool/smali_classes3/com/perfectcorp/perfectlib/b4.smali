.class public final synthetic Lcom/perfectcorp/perfectlib/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/b4;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/b4;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/b4;->a:I

    const-class v1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/b4;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/common/utility/EventPublisher;->c(Ljava/lang/Class;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/common/utility/EventPublisher;->c(Ljava/lang/Class;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
