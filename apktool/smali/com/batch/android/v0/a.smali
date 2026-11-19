.class public Lcom/batch/android/v0/a;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "Action"

.field public static final e:Ljava/lang/String; = "batch."


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/batch/android/UserAction;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/batch/android/BatchDeeplinkInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/v0/a;->c:Lcom/batch/android/BatchDeeplinkInterceptor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/v0/a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/batch/android/v0/a;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/c;

    invoke-direct {v2, p0}, Lcom/batch/android/b/c;-><init>(Lcom/batch/android/v0/a;)V

    const-string v3, "batch.group"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/b;

    invoke-direct {v2, p0}, Lcom/batch/android/b/b;-><init>(Lcom/batch/android/v0/a;)V

    const-string v3, "batch.deeplink"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/batch/android/b/d;->b:Ljava/lang/String;

    new-instance v2, Lcom/batch/android/UserAction;

    new-instance v3, Lcom/batch/android/b/d;

    invoke-direct {v3}, Lcom/batch/android/b/d;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/batch/android/b/i;->b:Ljava/lang/String;

    new-instance v2, Lcom/batch/android/UserAction;

    new-instance v3, Lcom/batch/android/b/i;

    invoke-direct {v3}, Lcom/batch/android/b/i;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/batch/android/b/j;->b:Ljava/lang/String;

    new-instance v2, Lcom/batch/android/UserAction;

    new-instance v3, Lcom/batch/android/b/j;

    invoke-direct {v3}, Lcom/batch/android/b/j;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/a;

    invoke-direct {v2}, Lcom/batch/android/b/a;-><init>()V

    const-string v3, "batch.clipboard"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/f;

    invoke-direct {v2}, Lcom/batch/android/b/f;-><init>()V

    const-string v3, "batch.rating"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/e;

    invoke-direct {v2}, Lcom/batch/android/b/e;-><init>()V

    const-string v3, "batch.android_request_notifications"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/e;

    invoke-direct {v2}, Lcom/batch/android/b/e;-><init>()V

    const-string v3, "batch.request_notifications"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/h;

    invoke-direct {v2}, Lcom/batch/android/b/h;-><init>()V

    const-string v3, "batch.android_smart_reoptin"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/h;

    invoke-direct {v2}, Lcom/batch/android/b/h;-><init>()V

    const-string v3, "batch.smart_reoptin"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/batch/android/UserAction;

    new-instance v2, Lcom/batch/android/b/g;

    invoke-direct {v2}, Lcom/batch/android/b/g;-><init>()V

    const-string v3, "batch.android_redirect_settings"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/batch/android/UserAction;

    new-instance v1, Lcom/batch/android/b/g;

    invoke-direct {v1}, Lcom/batch/android/b/g;-><init>()V

    const-string v2, "batch.redirect_settings"

    invoke-direct {v0, v2, v1}, Lcom/batch/android/UserAction;-><init>(Ljava/lang/String;Lcom/batch/android/UserActionRunnable;)V

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-virtual {p0, p2}, Lcom/batch/android/v0/a;->a(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "drawable"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :cond_1
    return p0
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/batch/android/v0/a;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 78
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public a(Lcom/batch/android/BatchDeeplinkInterceptor;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/batch/android/v0/a;->c:Lcom/batch/android/BatchDeeplinkInterceptor;

    return-void
.end method

.method public a(Lcom/batch/android/UserAction;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/UserAction;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "batch."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Action \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was already registered, and will be replaced."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Action"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "The action identifier (\'"

    const-string p1, "\') is using a reserved prefix (batch.)"

    invoke-static {p0, v0, p1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "action cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 72
    iget-object p0, p0, Lcom/batch/android/v0/a;->b:Ljava/util/HashMap;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 73
    :cond_0
    const-string p0, "drawable ressource ID must be different than 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    const-string p0, "identifier cannot be empty"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_2
    const-string p0, "identifier cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z
    .locals 2

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "batch."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 81
    new-instance p3, Lcom/batch/android/json/JSONObject;

    invoke-direct {p3}, Lcom/batch/android/json/JSONObject;-><init>()V

    :cond_1
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    move-result p0

    return p0

    .line 83
    :cond_2
    :goto_0
    const-string p0, "Action"

    const-string p1, "Identifier is null, empty, or starts with batch. . Aborting."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/UserAction;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/batch/android/UserAction;->getRunnable()Lcom/batch/android/UserActionRunnable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/batch/android/UserAction;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0, p3, p4}, Lcom/batch/android/UserActionRunnable;->performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V

    const/4 p0, 0x1

    return p0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Batch attempted to perform the action named \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' but couldn\'t find any action registered to handle this."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Action"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "batch."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/v0/a;->a:Ljava/util/HashMap;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "The action identifier (\'"

    const-string v0, "\') is using a reserved prefix (batch.)"

    invoke-static {p0, p1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "identifier cannot be empty"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "identifier cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "action"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Lcom/batch/android/BatchDeeplinkInterceptor;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/a;->c:Lcom/batch/android/BatchDeeplinkInterceptor;

    return-object p0
.end method
