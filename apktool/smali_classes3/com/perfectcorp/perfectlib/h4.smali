.class public final synthetic Lcom/perfectcorp/perfectlib/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/h4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/h4;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/h4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/h4;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;

    new-instance v0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/h4;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/h4;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p0}, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;-><init>(Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;

    new-instance v0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/h4;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/h4;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p0}, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;-><init>(Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
