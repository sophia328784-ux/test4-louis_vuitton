.class final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;,
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;
    }
.end annotation


# instance fields
.field final allLangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final defLang:Ljava/lang/String;

.field final description:Ljava/lang/String;

.field final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;",
            ">;"
        }
    .end annotation
.end field

.field final fontMapping:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field final langs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;",
            ">;"
        }
    .end annotation
.end field

.field final setting:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field final surveyId:J

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->surveyId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->title:Ljava/lang/String;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->allLangs:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->defLang:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->description:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->langs:Ljava/util/Map;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->setting:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->elements:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;->fontMapping:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method
