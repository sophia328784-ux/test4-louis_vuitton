.class public final synthetic Lcom/perfectcorp/perfectlib/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:D

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;DI)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/p;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/p;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/perfectcorp/perfectlib/p;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/p;->b:I

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/p;->c:D

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/p;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;->a:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {p0, v1, v2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
