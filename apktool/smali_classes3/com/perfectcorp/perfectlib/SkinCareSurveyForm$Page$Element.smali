.class final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;,
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;
    }
.end annotation


# instance fields
.field final id:J

.field final isRequired:Z

.field final langs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;",
            ">;"
        }
    .end annotation
.end field

.field final maxOptions:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field final minOptions:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;",
            ">;"
        }
    .end annotation
.end field

.field final title:Ljava/lang/String;

.field final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->title:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->langs:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->isRequired:Z

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->minOptions:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->maxOptions:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;->options:Ljava/util/List;

    return-void
.end method
