.class public Lcom/dynatrace/android/ragetap/detection/TapData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

.field public final b:Lcom/dynatrace/android/ragetap/detection/TapEventData;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/ragetap/detection/TapEventData;Lcom/dynatrace/android/ragetap/detection/TapEventData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iput-object p2, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

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
    check-cast p1, Lcom/dynatrace/android/ragetap/detection/TapData;

    iget-object v2, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/ragetap/detection/TapEventData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-object p1, p1, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/ragetap/detection/TapEventData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {v0}, Lcom/dynatrace/android/ragetap/detection/TapEventData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {p0}, Lcom/dynatrace/android/ragetap/detection/TapEventData;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TapData{tapDown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tapUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
