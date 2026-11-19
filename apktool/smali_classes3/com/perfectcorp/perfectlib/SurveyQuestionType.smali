.class public final enum Lcom/perfectcorp/perfectlib/SurveyQuestionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/SurveyQuestionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECK_BOX:Lcom/perfectcorp/perfectlib/SurveyQuestionType;

.field public static final enum MULTIPLE_CHOICE:Lcom/perfectcorp/perfectlib/SurveyQuestionType;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/SurveyQuestionType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    const/4 v1, 0x0

    const-string v2, "CheckBox"

    const-string v3, "CHECK_BOX"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->CHECK_BOX:Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    new-instance v1, Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    const/4 v2, 0x1

    const-string v3, "MultipleChoice"

    const-string v4, "MULTIPLE_CHOICE"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/SurveyQuestionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->MULTIPLE_CHOICE:Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->b:[Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/SurveyQuestionType;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->values()[Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "unknown question type "

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/SurveyQuestionType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/SurveyQuestionType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/SurveyQuestionType;->b:[Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/SurveyQuestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/SurveyQuestionType;

    return-object v0
.end method
