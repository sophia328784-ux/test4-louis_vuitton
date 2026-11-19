.class final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;
    }
.end annotation


# instance fields
.field final id:J

.field final isFreeText:Z

.field final langs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;",
            ">;"
        }
    .end annotation
.end field

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;->title:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;->langs:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;->isFreeText:Z

    return-void
.end method
