.class public Lcom/batch/android/BatchLandingMessage;
.super Lcom/batch/android/BatchMessage;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/PushUserActionSource;


# static fields
.field public static final KIND:Ljava/lang/String; = "landing"

.field private static final f:Ljava/lang/String; = "google."


# instance fields
.field private c:Landroid/os/Bundle;

.field private d:Lcom/batch/android/json/JSONObject;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/BatchMessage;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/BatchLandingMessage;->e:Z

    invoke-direct {p0, p1}, Lcom/batch/android/BatchLandingMessage;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchLandingMessage;->c:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/batch/android/BatchLandingMessage;->d:Lcom/batch/android/json/JSONObject;

    return-void
.end method

.method private a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    iget-object p0, p0, Lcom/batch/android/BatchLandingMessage;->c:Landroid/os/Bundle;

    const-string v1, "batchPushPayload"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/batch/android/BatchLandingMessage;->e:Z

    return-void
.end method

.method public b()Lcom/batch/android/json/JSONObject;
    .locals 5

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/batch/android/BatchLandingMessage;->c:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/batch/android/BatchLandingMessage;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchLandingMessage;->d:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "landing"

    return-object p0
.end method

.method public getPushBundle()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/batch/android/BatchLandingMessage;->c:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public isDisplayedFromInbox()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/BatchLandingMessage;->e:Z

    return p0
.end method
