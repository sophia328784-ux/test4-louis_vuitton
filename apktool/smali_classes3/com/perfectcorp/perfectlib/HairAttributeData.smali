.class public final Lcom/perfectcorp/perfectlib/HairAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "hairColor"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/HairAttributeData;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->c:Ljava/lang/Integer;

    :cond_1
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/HairAttributeData;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HairAttributeData;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getColorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HairAttributeData;->a:Ljava/lang/String;

    return-object p0
.end method
