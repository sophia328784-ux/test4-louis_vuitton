.class public Lcom/batch/android/v0/g;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "Messaging"

.field public static final j:Ljava/lang/String; = "com.batch.android.messaging.DISMISS_INTERSTITIAL"

.field public static final k:Ljava/lang/String; = "com.batch.android.messaging.DISMISS_BANNER"

.field public static final l:D = 30.0

.field private static final m:Ljava/lang/String; = "show"

.field private static final n:Ljava/lang/String; = "dismiss"

.field private static final o:Ljava/lang/String; = "close"

.field private static final p:Ljava/lang/String; = "close_error"

.field private static final q:Ljava/lang/String; = "auto_close"

.field private static final r:Ljava/lang/String; = "global_tap_action"

.field private static final s:Ljava/lang/String; = "cta_action"

.field private static final t:Ljava/lang/String; = "webview_click"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

.field private d:Lcom/batch/android/Batch$Messaging$InAppInterceptor;

.field private e:Z

.field private f:Lcom/batch/android/BatchMessage;

.field private final g:Lcom/batch/android/v0/a;

.field private final h:Lcom/batch/android/v0/k;


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/a;Lcom/batch/android/v0/k;)V
    .locals 2

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/v0/g;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/v0/g;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    iput-object v1, p0, Lcom/batch/android/v0/g;->d:Lcom/batch/android/Batch$Messaging$InAppInterceptor;

    iput-boolean v0, p0, Lcom/batch/android/v0/g;->e:Z

    iput-object v1, p0, Lcom/batch/android/v0/g;->f:Lcom/batch/android/BatchMessage;

    iput-object p1, p0, Lcom/batch/android/v0/g;->g:Lcom/batch/android/v0/a;

    iput-object p2, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    return-void
.end method

.method private a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 136
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 137
    sget-object v0, Lcom/batch/android/v0/g$a;->a:[I

    iget-object v1, p1, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 138
    const-string v0, "unknown"

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "inbox-landing"

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "landing"

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "local"

    .line 142
    :goto_0
    const-string v1, "s"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 143
    iget-object v0, p1, Lcom/batch/android/f0/c;->b:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 144
    iget-object p1, p1, Lcom/batch/android/f0/c;->d:Lcom/batch/android/json/JSONObject;

    if-eqz p1, :cond_3

    .line 145
    const-string v0, "ed"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 146
    :cond_3
    const-string p1, "type"

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method private a(Lcom/batch/android/f0/c;ILjava/lang/String;)V
    .locals 1

    .line 154
    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 155
    :goto_0
    :try_start_0
    const-string v0, "cta_action"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    .line 156
    const-string v0, "ctaIndex"

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    .line 157
    const-string p2, "action"

    invoke-virtual {p1, p2, p3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 158
    iget-object p0, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    const-string p2, "_MESSAGING"

    invoke-virtual {p0, p2, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 159
    const-string p1, "Messaging"

    const-string p2, "Error while tracking CTA event"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/batch/android/f0/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 160
    :try_start_0
    const-string v0, "webview_click"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/batch/android/f0/c;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "action"

    goto :goto_0

    :cond_0
    const-string p1, "actionName"

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 162
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    const-string p1, "analyticsID"

    invoke-virtual {v0, p1, p3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    const-string p1, "_MESSAGING"

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 165
    const-string p1, "Messaging"

    const-string p2, "Error while tracking a webview trackClick event"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/batch/android/f0/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 148
    :goto_0
    :try_start_0
    const-string v0, "cta_action"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    .line 149
    const-string v0, "ctaId"

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 150
    const-string p2, "ctaType"

    invoke-virtual {p1, p2, p3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 151
    const-string p2, "action"

    invoke-virtual {p1, p2, p4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 152
    iget-object p0, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    const-string p2, "_MESSAGING"

    invoke-virtual {p0, p2, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 153
    const-string p1, "Messaging"

    const-string p2, "Error while tracking CTA event"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lcom/batch/android/f0/c;Lcom/batch/android/f0/d;)V
    .locals 1

    .line 174
    :try_start_0
    const-string v0, "close_error"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 175
    const-string v0, "cause"

    iget p2, p2, Lcom/batch/android/f0/d;->b:I

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    const-string p2, "_MESSAGING"

    invoke-virtual {p0, p2, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 177
    const-string p1, "Messaging"

    const-string p2, "Error while tracking event"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lcom/batch/android/f0/c;Ljava/lang/String;)V
    .locals 2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    const-string v1, "_MESSAGING"

    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 173
    const-string p1, "Messaging"

    const-string p2, "Error while tracking event"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static o()Lcom/batch/android/v0/g;
    .locals 3

    new-instance v0, Lcom/batch/android/v0/g;

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v1

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/v0/g;-><init>(Lcom/batch/android/v0/a;Lcom/batch/android/v0/k;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Lcom/batch/android/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/g;->a(Z)Z

    move-result p0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-static {p3}, Lcom/batch/android/i0/b;->f(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/i0/c; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p2, Lcom/batch/android/BatchInAppMessage;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/batch/android/f0/c$a;->d:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/batch/android/BatchLandingMessage;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/batch/android/BatchLandingMessage;

    invoke-virtual {p1}, Lcom/batch/android/BatchLandingMessage;->isDisplayedFromInbox()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/batch/android/f0/c$a;->e:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/batch/android/f0/c$a;->c:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/f0/c;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, p2}, Lcom/batch/android/n/s;->a(Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)Lcom/batch/android/i;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/batch/android/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;Lcom/batch/android/i;)Lcom/batch/android/a;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/batch/android/BatchMessagingException;

    const-string p1, "The BatchMessage instance does not represent a banner."

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    const-string p1, "Messaging"

    const-string p2, "Error while parsing push payload"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/batch/android/BatchMessagingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Lcom/batch/android/BatchMessagingException;

    const-string p1, "Integration problem: your app must bundle the android x fragment and appcompat libraries, and their version must be higher than 1.0.0."

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "message cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string p0, "context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V
    .locals 1

    .line 118
    iget-object v0, p3, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/batch/android/v0/g;->g:Lcom/batch/android/v0/a;

    iget-object v0, p3, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    iget-object p3, p3, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Z)V
    .locals 3

    const-string v0, "A banner was attempted to be displayed, but the given context is not an Activity. Cannot continue."

    const-string v1, "Messaging"

    if-nez p3, :cond_0

    .line 120
    iget-boolean p3, p0, Lcom/batch/android/v0/g;->e:Z

    if-eqz p3, :cond_0

    .line 121
    iput-object p2, p0, Lcom/batch/android/v0/g;->f:Lcom/batch/android/BatchMessage;

    .line 122
    const-string p0, "Enqueuing a message, as it should have been displayed but Do Not Disturb is enabled."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/batch/android/Batch$Messaging;->loadMessagingView(Landroid/content/Context;Lcom/batch/android/BatchMessage;)Lcom/batch/android/BatchMessagingView;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/batch/android/BatchMessagingView;->getKind()Lcom/batch/android/BatchMessagingView$Kind;

    move-result-object p3

    sget-object v2, Lcom/batch/android/BatchMessagingView$Kind;->View:Lcom/batch/android/BatchMessagingView$Kind;

    if-ne p3, v2, :cond_2

    .line 125
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_1

    .line 126
    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p0, p3}, Lcom/batch/android/BatchMessagingView;->showView(Landroid/app/Activity;)V

    return-void

    .line 127
    :cond_1
    invoke-static {v1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/BatchMessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 128
    :catch_0
    invoke-static {v1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    invoke-static {p1, p2}, Lcom/batch/android/MessagingActivity;->startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 0

    .line 114
    sput-object p1, Lcom/batch/android/messaging/view/styled/mep/TextView;->b:Landroid/graphics/Typeface;

    .line 115
    sput-object p2, Lcom/batch/android/messaging/view/styled/mep/TextView;->c:Landroid/graphics/Typeface;

    .line 116
    invoke-static {p1}, Lcom/batch/android/g0/c$f;->b(Landroid/graphics/Typeface;)V

    .line 117
    invoke-static {p2}, Lcom/batch/android/g0/c$f;->a(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public a(Lcom/batch/android/Batch$Messaging$InAppInterceptor;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/batch/android/v0/g;->d:Lcom/batch/android/Batch$Messaging$InAppInterceptor;

    return-void
.end method

.method public a(Lcom/batch/android/Batch$Messaging$LifecycleListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    return-void
.end method

.method public a(Lcom/batch/android/BatchInAppMessage;)V
    .locals 4

    .line 130
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "LocalCampaigns"

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/batch/android/v0/g;->i()Lcom/batch/android/Batch$Messaging$InAppInterceptor;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v2, p1}, Lcom/batch/android/Batch$Messaging$InAppInterceptor;->onBatchInAppMessageReady(Lcom/batch/android/BatchInAppMessage;)Z

    move-result v2

    xor-int/2addr v3, v2

    :cond_0
    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, p1, v1}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Z)V

    return-void

    .line 134
    :cond_1
    const-string p0, "Developer prevented automatic In-App display"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_2
    const-string p0, "Could not find an activity to display on. Does the RuntimeManager ever had one?"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/batch/android/f0/c;)V
    .locals 1

    .line 184
    const-string v0, "auto_close"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->b(Lcom/batch/android/f0/c;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    .line 186
    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    sget-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Auto:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-interface {p0, p1, v0}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageClosed(Ljava/lang/String;Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/f0/c;ILcom/batch/android/f0/b;)V
    .locals 1

    .line 166
    iget-object v0, p3, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;ILjava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mepCtaIndex:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 169
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/batch/android/BatchMessageCTA;

    invoke-direct {v0, p3}, Lcom/batch/android/BatchMessageCTA;-><init>(Lcom/batch/android/f0/b;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageActionTriggered(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchMessageAction;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/a;)V
    .locals 3

    .line 176
    iget-object v0, p2, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 178
    :cond_0
    :try_start_0
    const-string v1, "global_tap_action"

    invoke-direct {p0, p1, v1}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 179
    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 180
    iget-object v0, p0, Lcom/batch/android/v0/g;->h:Lcom/batch/android/v0/k;

    const-string v2, "_MESSAGING"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    const-string v1, "Messaging"

    const-string v2, "Error while tracking CTA event"

    invoke-static {v1, v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :goto_0
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_1

    .line 183
    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/batch/android/BatchMessageAction;

    invoke-direct {v0, p2}, Lcom/batch/android/BatchMessageAction;-><init>(Lcom/batch/android/f0/a;)V

    const-string p2, "mepCtaIndex:-1"

    invoke-interface {p0, p1, p2, v0}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageActionTriggered(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchMessageAction;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/a;Ljava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p2, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    .line 175
    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/batch/android/BatchMessageAction;

    invoke-direct {v0, p2}, Lcom/batch/android/BatchMessageAction;-><init>(Lcom/batch/android/f0/a;)V

    invoke-interface {p0, p1, p3, v0}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageActionTriggered(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchMessageAction;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/f0/c;Lcom/batch/android/f0/d;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/g;->b(Lcom/batch/android/f0/c;Lcom/batch/android/f0/d;)V

    .line 188
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    .line 189
    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    sget-object p2, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Error:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-interface {p0, p1, p2}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageClosed(Ljava/lang/String;Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/f0/c;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V
    .locals 1

    .line 170
    iget-object v0, p4, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/f0/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    .line 172
    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    new-instance p3, Lcom/batch/android/BatchMessageCTA;

    invoke-direct {p3, p4}, Lcom/batch/android/BatchMessageCTA;-><init>(Lcom/batch/android/f0/b;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageActionTriggered(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchMessageAction;)V

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 2

    .line 110
    invoke-static {}, Lcom/batch/android/e/f0;->b()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "Messaging"

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 111
    const-string p0, "Your app doesn\'t seem to have the android X fragment library, or its version is lower than the 1.0.0 minimum required by Batch.. The landing will not be displayed. More info at https://batch.com/doc ."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    .line 112
    :cond_1
    invoke-static {}, Lcom/batch/android/e/f0;->a()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    .line 113
    const-string p0, "Your app doesn\'t seem to have the android X appcompat library, or its version is lower than the 1.0.0 minimum required by Batch. The landing will not be displayed. More info at https://batch.com/doc ."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public b(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Landroidx/fragment/app/DialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/g;->a(Z)Z

    move-result p0

    if-eqz p0, :cond_a

    :try_start_0
    invoke-static {p3}, Lcom/batch/android/i0/b;->f(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/i0/c; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p2, Lcom/batch/android/BatchInAppMessage;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/batch/android/f0/c$a;->d:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/batch/android/BatchLandingMessage;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/batch/android/BatchLandingMessage;

    invoke-virtual {p1}, Lcom/batch/android/BatchLandingMessage;->isDisplayedFromInbox()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/batch/android/f0/c$a;->e:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/batch/android/f0/c$a;->c:Lcom/batch/android/f0/c$a;

    iput-object p1, p0, Lcom/batch/android/f0/c;->e:Lcom/batch/android/f0/c$a;

    :cond_2
    :goto_0
    instance-of p1, p0, Lcom/batch/android/h0/a;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/batch/android/h0/a;

    invoke-static {p2, p0}, Lcom/batch/android/c0/a;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/a;)Lcom/batch/android/c0/a;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p1, p0, Lcom/batch/android/h0/g;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/batch/android/h0/g;

    invoke-static {p2, p0}, Lcom/batch/android/c0/g;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/g;)Lcom/batch/android/c0/g;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p1, p0, Lcom/batch/android/h0/f;

    if-eqz p1, :cond_5

    check-cast p0, Lcom/batch/android/h0/f;

    invoke-static {p2, p0}, Lcom/batch/android/c0/f;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/f;)Lcom/batch/android/c0/f;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p1, p0, Lcom/batch/android/h0/d;

    if-eqz p1, :cond_6

    check-cast p0, Lcom/batch/android/h0/d;

    invoke-static {p2, p0}, Lcom/batch/android/c0/d;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/d;)Lcom/batch/android/c0/d;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p1, p0, Lcom/batch/android/h0/h;

    if-eqz p1, :cond_7

    check-cast p0, Lcom/batch/android/h0/h;

    invoke-static {p2, p0}, Lcom/batch/android/c0/h;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/h;)Lcom/batch/android/c0/h;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of p1, p0, Lcom/batch/android/h0/b;

    if-nez p1, :cond_9

    instance-of p1, p0, Lcom/batch/android/g0/a;

    if-eqz p1, :cond_8

    check-cast p0, Lcom/batch/android/g0/a;

    invoke-static {p2, p0}, Lcom/batch/android/d0/a;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;)Lcom/batch/android/d0/a;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Lcom/batch/android/BatchMessagingException;

    const-string p1, "Internal error (code 10)"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/batch/android/BatchMessagingException;

    const-string p1, "This message is a banner. Please use the dedicated loadBanner() method."

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    const-string p1, "Messaging"

    const-string p2, "Error while parsing push payload"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/batch/android/BatchMessagingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p0, Lcom/batch/android/BatchMessagingException;

    const-string p1, "Integration problem: your app must bundle the android x fragment and appcompat libraries, and their version must be higher than 1.0.0."

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string p0, "message cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_c
    const-string p0, "context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lcom/batch/android/f0/c;)V
    .locals 1

    .line 178
    const-string v0, "close"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->b(Lcom/batch/android/f0/c;Ljava/lang/String;)V

    .line 179
    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    .line 180
    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    sget-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->User:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-interface {p0, p1, v0}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageClosed(Ljava/lang/String;Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/batch/android/v0/g;->b:Z

    return-void
.end method

.method public c(Lcom/batch/android/f0/c;)V
    .locals 1

    const-string v0, "dismiss"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->b(Lcom/batch/android/f0/c;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    sget-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Action:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-interface {p0, p1, v0}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageClosed(Ljava/lang/String;Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/batch/android/v0/g;->e:Z

    return-void
.end method

.method public d(Lcom/batch/android/f0/c;)V
    .locals 1

    const-string v0, "show"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/v0/g;->b(Lcom/batch/android/f0/c;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageShown(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/batch/android/v0/g;->a:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "messaging"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Lcom/batch/android/Batch$Messaging$InAppInterceptor;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/g;->d:Lcom/batch/android/Batch$Messaging$InAppInterceptor;

    return-object p0
.end method

.method public j()Lcom/batch/android/Batch$Messaging$LifecycleListener;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/g;->c:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/g;->f:Lcom/batch/android/BatchMessage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/v0/g;->e:Z

    return p0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/v0/g;->b:Z

    return p0
.end method

.method public n()Lcom/batch/android/BatchMessage;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/v0/g;->f:Lcom/batch/android/BatchMessage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/batch/android/v0/g;->f:Lcom/batch/android/BatchMessage;

    return-object v0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/v0/g;->a:Z

    return p0
.end method
