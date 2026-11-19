.class public Lcom/dynatrace/android/ragetap/detection/RageTap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dynatrace/android/ragetap/detection/TapData;

.field public final b:Lcom/dynatrace/android/ragetap/detection/TapData;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/ragetap/detection/TapData;Lcom/dynatrace/android/ragetap/detection/TapData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->a:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput-object p2, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->b:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput p3, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/ragetap/detection/RageTap;

    iget v2, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->c:I

    iget v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTap;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->a:Lcom/dynatrace/android/ragetap/detection/TapData;

    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTap;->a:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/ragetap/detection/TapData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->b:Lcom/dynatrace/android/ragetap/detection/TapData;

    iget-object p1, p1, Lcom/dynatrace/android/ragetap/detection/RageTap;->b:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/ragetap/detection/TapData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->a:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v0}, Lcom/dynatrace/android/ragetap/detection/TapData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->b:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v1}, Lcom/dynatrace/android/ragetap/detection/TapData;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->c:I

    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RageTap{firstTap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->a:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->b:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numOfTaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/ragetap/detection/RageTap;->c:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
