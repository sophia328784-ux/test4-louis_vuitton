.class public final Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option;->langs:Ljava/util/Map;

    invoke-static {p2, p3, p1}, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;->b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Option;->b:Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareSurveyForm$Page$Element$Option$Lang;->title:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
