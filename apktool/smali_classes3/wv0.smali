.class public final synthetic Lwv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

.field public final synthetic d:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;Ljava/lang/Throwable;I)V
    .locals 0

    iput p3, p0, Lwv0;->b:I

    iput-object p1, p0, Lwv0;->c:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    iput-object p2, p0, Lwv0;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lwv0;->b:I

    iget-object v1, p0, Lwv0;->d:Ljava/lang/Throwable;

    iget-object p0, p0, Lwv0;->c:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    invoke-interface {p0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
