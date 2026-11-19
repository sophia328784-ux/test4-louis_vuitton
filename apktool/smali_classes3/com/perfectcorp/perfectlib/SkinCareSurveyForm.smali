.class public final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/SurveyForm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;,
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;,
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "languageCode can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->defLang:Ljava/lang/String;

    const-string v1, "default language code can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->langs:Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->elements:Ljava/util/List;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/h4;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lcom/perfectcorp/perfectlib/h4;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can not get default language \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final getDoneButtonText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->doneBtn:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextButtonText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->nextBtn:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviousButtonText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->prevBtn:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQuestionText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->question:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQuestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Question;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->title:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
