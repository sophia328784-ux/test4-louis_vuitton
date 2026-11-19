.class public Lcom/batch/android/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LocalCampaignDeserializer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/t/b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 376
    const-string p0, "type"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Invalid campaign output type"

    if-nez v1, :cond_3

    .line 378
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 379
    const-string v1, "payload"

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ACTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "LANDING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "LANDING_CEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 381
    invoke-static {v2}, La61;->o(Ljava/lang/String;)V

    return-object v0

    .line 382
    :pswitch_0
    invoke-static {p1}, Lcom/batch/android/n/b;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/a;

    move-result-object p0

    return-object p0

    .line 383
    :pswitch_1
    invoke-static {p1}, Lcom/batch/android/n/n;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/b;

    move-result-object p0

    return-object p0

    .line 384
    :pswitch_2
    invoke-static {p1}, Lcom/batch/android/n/m;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/c;

    move-result-object p0

    return-object p0

    .line 385
    :cond_3
    invoke-static {v2}, La61;->o(Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61f5da1a -> :sswitch_2
        0x27afc5f7 -> :sswitch_1
        0x72c27236 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/batch/android/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 387
    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 388
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 389
    invoke-direct {p0, v2}, Lcom/batch/android/w/a;->c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/t/b$c;

    move-result-object v2

    .line 390
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid trigger : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalCampaignDeserializer"

    invoke-static {v3, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 393
    :cond_1
    const-string p0, "There is no valid trigger in the list."

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/t/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "startHour"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string p0, "startMin"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string p0, "endHour"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string p0, "endMin"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string p0, "quietDaysOfWeek"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/t/a;->a(I)Lcom/batch/android/t/a;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/batch/android/t/c;

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/t/c;-><init>(IIIILjava/util/List;)V

    return-object v0
.end method

.method private c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/t/b$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const-string p0, "type"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "NEXT_SESSION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "EVENT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "NOW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Lcom/batch/android/json/JSONException;

    const-string v0, "Unknown campaign triggers \""

    const-string v1, "\""

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/batch/android/y/a;

    const-string v2, "label"

    invoke-virtual {p1, v2, v0}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attributes"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/batch/android/y/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-object p0

    :cond_3
    const-string p0, "Invalid campaign event trigger name"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance p0, Lcom/batch/android/y/b;

    invoke-direct {p0}, Lcom/batch/android/y/b;-><init>()V

    return-object p0

    :cond_4
    const-string p0, "Invalid campaign trigger type"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x12eb6 -> :sswitch_2
        0x3f47a7a -> :sswitch_1
        0x4723952a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/batch/android/json/JSONObject;Z)Lcom/batch/android/t/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    new-instance v1, Lcom/batch/android/t/b;

    invoke-direct {v1}, Lcom/batch/android/t/b;-><init>()V

    const-string v2, "campaignId"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "campaignToken"

    invoke-virtual {p1, v2, v0}, Lcom/batch/android/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/batch/android/t/b;->m:Ljava/lang/String;

    const-string v2, "eventData"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/batch/android/t/b;->j:Lcom/batch/android/json/JSONObject;

    if-eqz v2, :cond_e

    const-string v2, "minimumApiLevel"

    invoke-virtual {p1, v2, v0}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/batch/android/t/b;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid campaign minimum API level"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string v2, "maximumApiLevel"

    invoke-virtual {p1, v2, v0}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/batch/android/t/b;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Invalid campaign maximum API level"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {p1, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/batch/android/t/b;->d:I

    if-ltz v2, :cond_d

    iget v2, v1, Lcom/batch/android/t/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "minDisplayInterval"

    invoke-virtual {p1, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/batch/android/t/b;->g:I

    if-ltz v2, :cond_c

    const-string v2, "startDate"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    const-string v3, "userTZ"

    const-string v4, "ts"

    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v7}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/batch/android/i/b;

    invoke-direct {v2, v5, v6}, Lcom/batch/android/i/b;-><init>(J)V

    iput-object v2, v1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/batch/android/i/c;

    invoke-direct {v2, v5, v6}, Lcom/batch/android/i/c;-><init>(J)V

    iput-object v2, v1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    :cond_5
    :goto_2
    const-string v2, "endDate"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v6}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/batch/android/i/b;

    invoke-direct {v2, v4, v5}, Lcom/batch/android/i/b;-><init>(J)V

    iput-object v2, v1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/batch/android/i/c;

    invoke-direct {v2, v4, v5}, Lcom/batch/android/i/c;-><init>(J)V

    iput-object v2, v1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    :cond_7
    :goto_3
    iget-object v2, v1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/a;)I

    move-result v2

    if-gez v2, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, "Start date is equals or greater than end date."

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_9
    :goto_4
    const-string v2, "capping"

    invoke-virtual {p1, v2, v0}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/batch/android/t/b;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_a

    goto :goto_5

    :cond_a
    const-string p0, "Invalid campaign capping"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_b
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "persist"

    invoke-virtual {p1, v2, v0}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/batch/android/t/b;->l:Z

    const-string v0, "triggers"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/w/a;->a(Lcom/batch/android/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/batch/android/t/b;->k:Ljava/util/List;

    const-string v0, "output"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/w/a;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/t/b$a;

    move-result-object v0

    iput-object v0, v1, Lcom/batch/android/t/b;->i:Lcom/batch/android/t/b$a;

    const-string v0, "customPayload"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/batch/android/t/b;->p:Lcom/batch/android/json/JSONObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "requireJIT"

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v1, Lcom/batch/android/t/b;->q:Z

    const-string p2, "quietHours"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/batch/android/w/a;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/t/c;

    move-result-object p0

    iput-object p0, v1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    const-string p0, "displayDelaySec"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/batch/android/t/b;->o:I

    return-object v1

    :cond_c
    const-string p0, "Invalid campaign minimum display interval"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_d
    const-string p0, "Invalid campaign priority"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string p0, "Invalid eventData"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_f
    const-string p0, "Invalid campaignId"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    :cond_10
    const-string p0, "Cannot parse a null campaign json"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/batch/android/json/JSONArray;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 371
    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 373
    invoke-virtual {p0, v2, p2}, Lcom/batch/android/w/a;->a(Lcom/batch/android/json/JSONObject;Z)Lcom/batch/android/t/b;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 375
    const-string v3, "LocalCampaignDeserializer"

    const-string v4, "An error occurred while parsing an In-App Campaign. Skipping."

    invoke-static {v3, v4, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
