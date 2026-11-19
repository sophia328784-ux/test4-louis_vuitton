.class public final Lcom/batch/android/v0/i;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "Profile"


# instance fields
.field private final a:Lcom/batch/android/v0/k;


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    iput-object p1, p0, Lcom/batch/android/v0/i;->a:Lcom/batch/android/v0/k;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Lcom/batch/android/j1/b;)V
    .locals 3

    .line 135
    invoke-virtual {p2}, Lcom/batch/android/j1/b;->e()Ljava/lang/Integer;

    move-result-object p2

    .line 136
    invoke-static {p2}, Lcom/batch/android/BatchMigration;->isCustomIDMigrationDisabled(Ljava/lang/Integer;)Z

    move-result v0

    const-string v1, "Profile"

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "Custom ID migration has been explicitly disabled."

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    const-string v2, "Automatic custom id migration."

    invoke-static {v1, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/batch/android/v0/i;->b(Ljava/lang/String;)V

    .line 141
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/batch/android/BatchMigration;->isCustomDataMigrationDisabled(Ljava/lang/Integer;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 142
    const-string p0, "Custom Data migration has been explicitly disabled."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_2
    const-string p2, "Automatic custom data migration."

    invoke-static {v1, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object p2

    new-instance v0, Lw21;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, p1, v1}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/batch/android/v0/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Profile"

    if-nez v0, :cond_0

    const-string p0, "Cannot send identify event since Installation ID is null."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "custom_id"

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v3, v4, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p1, "install_id"

    invoke-virtual {v3, p1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p1, "identifiers"

    invoke-virtual {v2, p1, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/v0/i;->a:Lcom/batch/android/v0/k;

    const-string p1, "_PROFILE_IDENTIFY"

    invoke-virtual {p0, p1, v2}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Sending identify event failed"

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/batch/android/c1/e;

    invoke-direct {v0}, Lcom/batch/android/c1/e;-><init>()V

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/batch/android/v0/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/c1/e;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/batch/android/v0/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/c1/e;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/l1/c;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/l1/d;

    invoke-virtual {v0, v3, v2}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/l1/c;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/batch/android/l1/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    invoke-direct {v3, v4, v1}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/c1/e;->a(Ljava/lang/String;Lcom/batch/android/l1/d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/batch/android/v0/i;->a(Lcom/batch/android/c1/e;)V

    return-void
.end method

.method public static i()Lcom/batch/android/v0/i;
    .locals 2

    new-instance v0, Lcom/batch/android/v0/i;

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/v0/i;-><init>(Lcom/batch/android/v0/k;)V

    return-object v0
.end method

.method public static synthetic i(Lcom/batch/android/v0/i;Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/batch/android/v0/i;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic j(Lcom/batch/android/v0/i;Landroid/content/Context;Lcom/batch/android/j1/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/i;->a(Landroid/content/Context;Lcom/batch/android/j1/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/c1/e;)V
    .locals 2

    const-string v0, "Profile"

    .line 126
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/b;->a(Lcom/batch/android/c1/e;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/batch/android/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string p0, "Trying to send an empty profile data changed event, aborting."

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/batch/android/v0/i;->a:Lcom/batch/android/v0/k;

    const-string v1, "_PROFILE_DATA_CHANGED"

    invoke-virtual {p0, v1, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :goto_0
    const-string p1, "Sending profile data changed event failed."

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 145
    invoke-static {p1}, Lcom/batch/android/c1/a;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Profile"

    if-eqz v0, :cond_0

    .line 146
    const-string p0, "identify called with invalid identifier (must be less than 1024 chars)"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "identify called with a blocklisted identifier: `"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`, Please ensure you have correctly implemented the API."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_1
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 150
    const-string p0, "Batch does not have a context yet. Make sure Batch is started."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_2
    invoke-static {v0}, Lcom/batch/android/Batch$User;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/s/a;->b()V

    .line 153
    :cond_3
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/batch/android/v0/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/batch/android/v0/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Profile"

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/batch/android/o/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/batch/android/BatchEventAttributes;->validateEventAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to validate event attributes:\n\n"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nNot tracking event."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/batch/android/o/c;->a(Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Could not process BatchEventAttributes, refusing to track event. This is an internal error: please contact us."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BatchEventAttributes serialization did failed - Not tracking event."

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/batch/android/v0/i;->a:Lcom/batch/android/v0/k;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "E."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid event name (\'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'). Not tracking event."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 131
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    .line 132
    const-string p0, "Profile"

    const-string p1, "Batch does not have a context yet. Aborting profile data migrations."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 133
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p1

    new-instance v0, Lgy0;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p2, v1}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 134
    invoke-virtual {p1, v0}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/c;)V

    :cond_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "profile"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
