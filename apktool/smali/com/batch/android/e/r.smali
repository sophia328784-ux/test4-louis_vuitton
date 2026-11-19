.class public Lcom/batch/android/e/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/r$d;,
        Lcom/batch/android/e/r$c;,
        Lcom/batch/android/e/r$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "l"

.field private static final d:Ljava/lang/String; = "i"

.field private static final e:Ljava/lang/String; = "di"

.field private static final f:Ljava/lang/String; = "s"

.field private static final g:Ljava/lang/String; = "lcr"

.field private static final h:Ljava/lang/String; = "ld"

.field private static final i:Ljava/lang/String; = "ld2"

.field private static final j:Ljava/lang/String; = "bi"

.field private static final k:Ljava/lang/String; = "bp"

.field private static final l:Ljava/lang/String; = "a"

.field private static final m:Ljava/lang/String; = "pr"

.field private static final n:Ljava/lang/String; = "gr"

.field private static final o:Ljava/lang/String; = "grs"

.field private static final p:Ljava/lang/String; = "od"

.field private static final q:Ljava/lang/String; = "t"

.field private static final r:Ljava/lang/String; = "ex"

.field private static final s:Ljava/lang/String; = "va"

.field private static final t:Ljava/lang/String; = "ch"

.field private static final u:Ljava/lang/String; = "vis"

.field private static final v:Ljava/lang/String; = "fmt"

.field private static final w:Ljava/lang/String; = "fmt_args"

.field private static final x:Ljava/lang/String; = "r"

.field private static final y:Ljava/lang/String; = "old_bp_icnhandling"

.field public static final z:Ljava/lang/String; = "com.batch"


# instance fields
.field private final a:Lcom/batch/android/json/JSONObject;

.field private b:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/batch/android/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    return-void

    .line 36
    :cond_0
    const-string p0, "Cannot init PushData without the associated JSON data"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error while parsing JSON data"

    invoke-static {p1, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-string p0, "Cannot init PushData without the associated JSON data"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/batch/android/e/r;
    .locals 0

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/r;->a(Landroid/os/Bundle;)Lcom/batch/android/e/r;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    const-string p0, "intent cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/batch/android/e/r;
    .locals 1

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "com.batch"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    new-instance v0, Lcom/batch/android/e/r;

    invoke-direct {v0, p0}, Lcom/batch/android/e/r;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/batch/android/e/r;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->W1()Ljava/util/HashMap;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "com.batch"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 148
    new-instance v0, Lcom/batch/android/e/r;

    invoke-direct {v0, p0}, Lcom/batch/android/e/r;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;
    .locals 2

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, p1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private b()Lcom/batch/android/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/e/r;->b:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ld2"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Lcom/batch/android/e/a;

    invoke-direct {v1}, Lcom/batch/android/e/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/batch/android/e/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/q;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/batch/android/e/r;->b:Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "Decoding landing message has failed"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, p1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/batch/android/e/r;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l()Lcom/batch/android/json/JSONObject;
    .locals 1

    const-string v0, "ld"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    const-string v0, "ld"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ld2"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public C()Z
    .locals 2

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v0, "grs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public D()Z
    .locals 3

    const-string v0, "lcr"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public E()Z
    .locals 1

    const-string v0, "l"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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

.method public F()Z
    .locals 3

    const-string v0, "s"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public G()Z
    .locals 2

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "old_bp_icnhandling"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchNotificationAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "a"

    invoke-direct {p0, v1}, Lcom/batch/android/e/r;->a(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONArray;->optJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    const-string v4, "Push"

    if-nez v3, :cond_0

    const-string v3, "InternalPushData - getActions: Invalid action json array object. Skipping."

    invoke-static {v4, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/batch/android/BatchNotificationAction;

    invoke-direct {v5}, Lcom/batch/android/BatchNotificationAction;-><init>()V

    const-string v6, "l"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/batch/android/BatchNotificationAction;->label:Ljava/lang/String;

    const-string v6, "i"

    invoke-virtual {v3, v6, v7}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/batch/android/BatchNotificationAction;->drawableName:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "ui"

    invoke-virtual {v3, v8, v6}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v5, Lcom/batch/android/BatchNotificationAction;->hasUserInterface:Z

    invoke-virtual {v3, v1, v7}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/batch/android/BatchNotificationAction;->actionIdentifier:Ljava/lang/String;

    const-string v7, "args"

    invoke-virtual {v3, v7}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v7

    iput-object v7, v5, Lcom/batch/android/BatchNotificationAction;->actionArguments:Lcom/batch/android/json/JSONObject;

    const-string v7, "d"

    invoke-virtual {v3, v7, v6}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v5, Lcom/batch/android/BatchNotificationAction;->shouldDismissNotification:Z

    iget-object v3, v5, Lcom/batch/android/BatchNotificationAction;->actionArguments:Lcom/batch/android/json/JSONObject;

    if-nez v3, :cond_1

    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    iput-object v3, v5, Lcom/batch/android/BatchNotificationAction;->actionArguments:Lcom/batch/android/json/JSONObject;

    :cond_1
    iget-object v3, v5, Lcom/batch/android/BatchNotificationAction;->label:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "InternalPushData - getActions: Empty or null label. Skipping."

    invoke-static {v4, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v3, v5, Lcom/batch/android/BatchNotificationAction;->actionIdentifier:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "InternalPushData - getActions: Empty or null action identifier. Skipping."

    invoke-static {v4, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "ch"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "bi"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "bi"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "u"

    invoke-direct {p0, v0, v1}, Lcom/batch/android/e/r;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "bp"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "d"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, "bp"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "u"

    invoke-direct {p0, v0, v1}, Lcom/batch/android/e/r;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v1, "i"

    const-string v2, "od"

    const-string v3, "ex"

    const-string v4, "va"

    const-string v5, "t"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/batch/android/json/JSONHelper;->jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Push"

    const-string v1, "Error while deserializing the PushData extra parameters."

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "gr"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "di"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Lcom/batch/android/json/JSONObject;
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/e/r;->b()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/r;->l()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public m()Lcom/batch/android/e/r$b;
    .locals 2

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v0, "fmt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/r$b;->a(Ljava/lang/String;)Lcom/batch/android/e/r$b;

    move-result-object p0

    return-object p0
.end method

.method public n()Lcom/batch/android/json/JSONObject;
    .locals 1

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v0, "fmt_args"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v1, "od"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/batch/android/json/JSONHelper;->jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Push"

    const-string v1, "Error while deserializing the PushData open data."

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public q()Lcom/batch/android/e/r$c;
    .locals 3

    const-string v0, "pr"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/batch/android/e/r$c;->c:Lcom/batch/android/e/r$c;

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/batch/android/e/r$c;->g:Lcom/batch/android/e/r$c;

    return-object p0

    :cond_1
    sget-object p0, Lcom/batch/android/e/r$c;->f:Lcom/batch/android/e/r$c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/batch/android/e/r$c;->e:Lcom/batch/android/e/r$c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/batch/android/e/r$c;->d:Lcom/batch/android/e/r$c;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while reading the priority number "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Push"

    invoke-static {v1, p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    sget-object p0, Lcom/batch/android/e/r$c;->b:Lcom/batch/android/e/r$c;

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const-string v0, "i"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()J
    .locals 3

    const-string v0, "r"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "dma"

    invoke-virtual {p0, v2, v0, v1}, Lcom/batch/android/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 3

    const-string v0, "r"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "dmi"

    invoke-virtual {p0, v2, v0, v1}, Lcom/batch/android/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Lcom/batch/android/e/r$d;
    .locals 2

    const-string v0, "r"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/batch/android/e/r$d;->b:Lcom/batch/android/e/r$d;

    return-object p0

    :cond_0
    const-string v0, "m"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/batch/android/e/r$d;->b:Lcom/batch/android/e/r$d;

    return-object p0

    :cond_1
    sget-object p0, Lcom/batch/android/e/r$d;->d:Lcom/batch/android/e/r$d;

    return-object p0

    :cond_2
    sget-object p0, Lcom/batch/android/e/r$d;->c:Lcom/batch/android/e/r$d;

    return-object p0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const-string v0, "l"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Lcom/batch/android/BatchNotificationSource;
    .locals 2

    const-string v0, "t"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "c"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/batch/android/BatchNotificationSource;->CAMPAIGN:Lcom/batch/android/BatchNotificationSource;

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/batch/android/BatchNotificationSource;->TRANSACTIONAL:Lcom/batch/android/BatchNotificationSource;

    return-object p0

    :cond_1
    const-string v0, "tc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/batch/android/BatchNotificationSource;->TRIGGER:Lcom/batch/android/BatchNotificationSource;

    return-object p0

    :cond_2
    sget-object p0, Lcom/batch/android/BatchNotificationSource;->UNKNOWN:Lcom/batch/android/BatchNotificationSource;

    return-object p0
.end method

.method public x()I
    .locals 2

    iget-object p0, p0, Lcom/batch/android/e/r;->a:Lcom/batch/android/json/JSONObject;

    const-string v0, "vis"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public y()Z
    .locals 3

    const-string v0, "bi"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "u"

    invoke-direct {p0, v0, v2}, Lcom/batch/android/e/r;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public z()Z
    .locals 3

    const-string v0, "bp"

    invoke-direct {p0, v0}, Lcom/batch/android/e/r;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "u"

    invoke-direct {p0, v0, v2}, Lcom/batch/android/e/r;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
