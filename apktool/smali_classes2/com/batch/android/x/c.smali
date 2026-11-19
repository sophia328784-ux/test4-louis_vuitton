.class public Lcom/batch/android/x/c;
.super Lcom/batch/android/x/a;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/batch/android/x/a;)V
    .locals 2

    iget-object v0, p1, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/batch/android/x/a;->b:Lcom/batch/android/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/batch/android/x/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    iget-object p1, p1, Lcom/batch/android/x/a;->b:Lcom/batch/android/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/batch/android/x/c;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onEventTracked Found an event label, but was not a string. Value: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalCampaigns"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/batch/android/x/a;)Z
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    const-string v0, "E."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b$c;)Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/x/a;->b:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Lcom/batch/android/y/a;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/batch/android/y/a;

    iget-object v1, p0, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/batch/android/x/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, p0, v0}, Lcom/batch/android/y/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
