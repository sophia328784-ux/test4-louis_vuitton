.class public final synthetic Lcom/perfectcorp/perfectlib/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/y3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/y3;->c:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/y3;->b:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/y3;->c:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    packed-switch v0, :pswitch_data_0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_0
    const-wide v0, 0x3fe3333333333334L    # 0.6000000000000001

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_1
    const-wide v0, 0x3fd3333333333334L    # 0.30000000000000004

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_2
    const-wide v0, 0x3fc999999999999aL    # 0.2

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_5
    const-wide/16 v0, 0x0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
