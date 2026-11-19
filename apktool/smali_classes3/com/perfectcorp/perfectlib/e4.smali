.class public final synthetic Lcom/perfectcorp/perfectlib/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/e4;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/e4;->b:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/e4;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/e4;->b:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
