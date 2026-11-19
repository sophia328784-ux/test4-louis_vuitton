.class final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lang"
.end annotation


# instance fields
.field final doneBtn:Ljava/lang/String;

.field final nextBtn:Ljava/lang/String;

.field final prevBtn:Ljava/lang/String;

.field final question:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->prevBtn:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->nextBtn:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->doneBtn:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Lang;->question:Ljava/lang/String;

    return-void
.end method
