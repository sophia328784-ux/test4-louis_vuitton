.class final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lang"
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Lang;->description:Ljava/lang/String;

    return-void
.end method
