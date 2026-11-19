.class public Lcom/batch/android/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field private static final a:Ljava/lang/String; = "EventBuiltinActionRunnable"

.field public static b:Ljava/lang/String; = "batch.user.event"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 6

    const-string p1, "EventBuiltinActionRunnable"

    :try_start_0
    new-instance p2, Lcom/batch/android/json/JSONObject;

    invoke-direct {p2, p3}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    const-string p3, "e"

    invoke-virtual {p2, p3}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "Could not perform event action : event\'s null"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_1

    const-string p0, "Could not perform event action : event name is empty"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p4, Lcom/batch/android/BatchEventAttributes;

    invoke-direct {p4}, Lcom/batch/android/BatchEventAttributes;-><init>()V

    const-string v0, "l"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "$label"

    invoke-virtual {p4, v2, v0}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    :cond_2
    const-string v0, "t"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3, v1}, Lcom/batch/android/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v4, "Could not add tag in event action : tag value is null or invalid"

    invoke-static {p1, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "$tags"

    invoke-virtual {p4, v0, v2}, Lcom/batch/android/BatchEventAttributes;->putStringList(Ljava/lang/String;Ljava/util/List;)Lcom/batch/android/BatchEventAttributes;

    :cond_5
    const-string v0, "a"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/batch/android/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p2}, Lcom/batch/android/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/batch/android/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;I)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_6
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p4, v1, v2, v3}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;J)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_7
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_8

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p4, v1, v2}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;F)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_8
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_9

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p4, v1, v2, v3}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;D)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_9
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/batch/android/b/j;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p4, v1, v3}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_a
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_b
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p4, v1, v2}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Z)Lcom/batch/android/BatchEventAttributes;

    goto :goto_2

    :cond_c
    const-string v1, "Could not add data in event action : value type is invalid"

    invoke-static {p1, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-static {p3, p4}, Lcom/batch/android/Batch$Profile;->trackEvent(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Json object failure : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
