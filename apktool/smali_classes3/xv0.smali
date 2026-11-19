.class public final synthetic Lxv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V
    .locals 0

    iput p2, p0, Lxv0;->a:I

    iput-object p1, p0, Lxv0;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lxv0;->a:I

    const-string v1, "[syncServer] failed."

    const-string v2, "[syncServer] canceled."

    iget-object p0, p0, Lxv0;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d;

    new-instance p1, Lcom/perfectcorp/perfectlib/y3;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v3, "SkinCare3RecommendationHandler"

    if-eqz v0, :cond_0

    invoke-static {v3, v2, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v3, "ShadeFinderRecommendationHandler"

    if-eqz v0, :cond_1

    invoke-static {v3, v2, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
