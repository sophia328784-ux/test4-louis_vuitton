.class public Lcom/batch/android/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "batch.dismiss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/batch/android/f0/a;

    iget-object v2, p0, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    iget-object p1, p1, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
