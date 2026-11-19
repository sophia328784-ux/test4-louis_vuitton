.class public final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Question"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;

.field public final b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->langs:Ljava/util/Map;

    invoke-static {p2, p3, v0}, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->options:Ljava/util/List;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/h4;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Lcom/perfectcorp/perfectlib/h4;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;->description:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;->title:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Lcom/perfectcorp/perfectlib/SurveyQuestionType;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->type:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    move-result-object p0

    return-object p0
.end method

.method public final isRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->isRequired:Z

    return p0
.end method
