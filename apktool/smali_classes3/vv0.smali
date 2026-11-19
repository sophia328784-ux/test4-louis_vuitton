.class public final synthetic Lvv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V
    .locals 0

    iput p2, p0, Lvv0;->a:I

    iput-object p1, p0, Lvv0;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lvv0;->a:I

    const-string v1, "ShadeFinderRecommendationHandler"

    const-string v2, "[syncServer] succeed"

    const/4 v3, 0x3

    iget-object p0, p0, Lvv0;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    packed-switch v0, :pswitch_data_0

    const-string v0, "SkinCare3RecommendationHandler"

    invoke-static {v3, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_0
    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_1
    new-instance v0, Lcom/perfectcorp/perfectlib/y3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    const-string p0, "[syncServerInternal] succeeded"

    invoke-static {v3, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
