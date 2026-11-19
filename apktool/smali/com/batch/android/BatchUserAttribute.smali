.class public Lcom/batch/android/BatchUserAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchUserAttribute$Type;
    }
.end annotation


# instance fields
.field public type:Lcom/batch/android/BatchUserAttribute$Type;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/batch/android/BatchUserAttribute$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    return-void
.end method


# virtual methods
.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->BOOL:Lcom/batch/android/BatchUserAttribute$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->DATE:Lcom/batch/android/BatchUserAttribute$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->LONGLONG:Lcom/batch/android/BatchUserAttribute$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->DOUBLE:Lcom/batch/android/BatchUserAttribute$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->STRING:Lcom/batch/android/BatchUserAttribute$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUriValue()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchUserAttribute;->type:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->URL:Lcom/batch/android/BatchUserAttribute$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/BatchUserAttribute;->value:Ljava/lang/Object;

    check-cast p0, Ljava/net/URI;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
