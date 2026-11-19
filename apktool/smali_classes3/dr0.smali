.class public final synthetic Ldr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/RecommendationType;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;Lcom/perfectcorp/perfectlib/RecommendationType;I)V
    .locals 0

    iput p3, p0, Ldr0;->b:I

    iput-object p1, p0, Ldr0;->c:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    iput-object p2, p0, Ldr0;->d:Lcom/perfectcorp/perfectlib/RecommendationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ldr0;->b:I

    const-string v1, "Unsupported type="

    iget-object v2, p0, Ldr0;->d:Lcom/perfectcorp/perfectlib/RecommendationType;

    iget-object p0, p0, Ldr0;->c:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
