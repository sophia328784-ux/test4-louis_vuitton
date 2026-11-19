.class public Lcom/batch/android/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field private static final a:Ljava/lang/String; = "UserDataBuiltinAction"

.field public static b:Ljava/lang/String; = "batch.user.tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 3

    const-string p0, "UserDataBuiltinAction"

    const-string p1, "Removing tag "

    const-string p2, "Adding tag "

    :try_start_0
    new-instance p4, Lcom/batch/android/json/JSONObject;

    invoke-direct {p4, p3}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    const-string p3, "c"

    invoke-virtual {p4, p3}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "Could not perform tag edit action : collection\'s null"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Could not perform tag edit action : collection name is empty"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "t"

    invoke-virtual {p4, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Could not perform tag edit action : tag\'s null"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Could not perform tag edit action : tag name is empty"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "a"

    invoke-virtual {p4, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_4

    const-string p1, "Could not perform tag edit action : action\'s null"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "add"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " to collection "

    if-eqz v1, :cond_5

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/Batch$Profile;->editor()Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/batch/android/BatchProfileAttributeEditor;->addToArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    invoke-virtual {p1}, Lcom/batch/android/BatchProfileAttributeEditor;->save()V

    return-void

    :cond_5
    const-string p2, "remove"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/Batch$Profile;->editor()Lcom/batch/android/BatchProfileAttributeEditor;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/batch/android/BatchProfileAttributeEditor;->removeFromArray(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchProfileAttributeEditor;

    invoke-virtual {p1}, Lcom/batch/android/BatchProfileAttributeEditor;->save()V

    return-void

    :cond_6
    const-string p1, "Could not perform tag edit action: Unknown action"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Json object failure : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
