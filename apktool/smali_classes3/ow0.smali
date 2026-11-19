.class public final synthetic Low0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;I)V
    .locals 0

    iput p2, p0, Low0;->a:I

    iput-object p1, p0, Low0;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Low0;->a:I

    const-string v1, "SkinCare3RecommendationHandler"

    iget-object p0, p0, Low0;->b:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "[getSurveyForm] failed."

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/SurveyForm;

    const-string v0, "[getSurveyForm] succeed"

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;->onSuccess(Lcom/perfectcorp/perfectlib/SurveyForm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
