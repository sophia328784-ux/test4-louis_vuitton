.class public Lcom/batch/android/i0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PayloadParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 322
    invoke-static {p0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 323
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 318
    const-string v0, "a"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "args"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    .line 320
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 321
    :cond_0
    new-instance v1, Lcom/batch/android/f0/a;

    invoke-direct {v1, v0, p0}, Lcom/batch/android/f0/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-object v1
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/a;)Lcom/batch/android/h0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 239
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/a;->h:Ljava/lang/String;

    .line 240
    const-string v0, "cancelLabel"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/a;->i:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/batch/android/h0/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Alert payload requires at least a title or a body"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_1
    :goto_0
    const-string v0, "cta"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 244
    invoke-static {p0}, Lcom/batch/android/i0/b;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/b;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 245
    iput-object p0, p1, Lcom/batch/android/h0/a;->j:Lcom/batch/android/f0/b;

    :cond_2
    return-object p1
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/b;)Lcom/batch/android/h0/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/c;)V

    return-object p1
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/d;)Lcom/batch/android/h0/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 285
    const-string v0, "fullscreen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/batch/android/h0/d;->p:Z

    .line 286
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "swipe_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/batch/android/h0/d;->k:Z

    .line 287
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/d;->l:Ljava/lang/String;

    .line 288
    const-string v0, "image_description"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/d;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 290
    const-string v2, "width"

    invoke-virtual {p0, v2, v0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 291
    const-string v3, "height"

    invoke-virtual {p0, v3, v0}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v2, :cond_3

    if-ltz v0, :cond_3

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v3, Lcom/batch/android/messaging/Size2D;

    invoke-direct {v3, v2, v0}, Lcom/batch/android/messaging/Size2D;-><init>(II)V

    iput-object v3, p1, Lcom/batch/android/h0/d;->n:Lcom/batch/android/messaging/Size2D;

    goto :goto_1

    .line 293
    :cond_1
    :goto_0
    new-instance v0, Lcom/batch/android/messaging/Size2D;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/batch/android/messaging/Size2D;-><init>(II)V

    iput-object v0, p1, Lcom/batch/android/h0/d;->n:Lcom/batch/android/messaging/Size2D;

    .line 294
    :goto_1
    const-string v0, "style"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/d;->h:Ljava/lang/String;

    .line 295
    :try_start_0
    new-instance v0, Lcom/batch/android/a0/g;

    new-instance v2, Lcom/batch/android/b0/a;

    invoke-direct {v2}, Lcom/batch/android/b0/a;-><init>()V

    iget-object v3, p1, Lcom/batch/android/h0/d;->h:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object v0
    :try_end_0
    .catch Lcom/batch/android/a0/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 296
    const-string v0, "auto_close"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/batch/android/h0/d;->o:I

    .line 297
    const-string v0, "global_tap_delay"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/batch/android/h0/d;->j:J

    .line 298
    const-string v0, "action"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/a;

    move-result-object p0

    iput-object p0, p1, Lcom/batch/android/h0/d;->i:Lcom/batch/android/f0/a;

    return-object p1

    .line 299
    :cond_2
    :try_start_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-23)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/batch/android/a0/a; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 300
    const-string p1, "PayloadParser"

    const-string v0, "Parsing exception"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-24)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_3
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Image: invalid width or height"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/h0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;
        }
    .end annotation

    .line 246
    const-string v0, "alert"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance p1, Lcom/batch/android/h0/a;

    invoke-direct {p1, p0}, Lcom/batch/android/h0/a;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 248
    :cond_0
    const-string v0, "universal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    new-instance p1, Lcom/batch/android/h0/g;

    invoke-direct {p1, p0}, Lcom/batch/android/h0/g;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 250
    :cond_1
    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    new-instance p1, Lcom/batch/android/h0/b;

    invoke-direct {p1, p0}, Lcom/batch/android/h0/b;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 252
    :cond_2
    const-string v0, "modal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    new-instance p1, Lcom/batch/android/h0/f;

    invoke-direct {p1, p0}, Lcom/batch/android/h0/f;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 254
    :cond_3
    const-string v0, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    new-instance p1, Lcom/batch/android/h0/d;

    invoke-direct {p1, p0}, Lcom/batch/android/h0/d;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 256
    :cond_4
    const-string v0, "webview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 257
    new-instance p1, Lcom/batch/android/h0/h;

    invoke-direct {p1, p0}, Lcom/batch/android/h0/h;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 258
    :cond_5
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Unknown message kind"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/f;)Lcom/batch/android/h0/f;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 260
    invoke-static {p0, p1}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/c;)V

    return-object p1
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/g;)Lcom/batch/android/h0/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const-string v0, "h1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->i:Ljava/lang/String;

    const-string v0, "h2"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->j:Ljava/lang/String;

    const-string v0, "h3"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->k:Ljava/lang/String;

    const-string v0, "hero"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->m:Ljava/lang/String;

    const-string v0, "video"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    const-string v0, "hdesc"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->o:Ljava/lang/String;

    const-string v0, "style"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->h:Ljava/lang/String;

    const-string v0, "attach_cta_bottom"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->q:Ljava/lang/Boolean;

    const-string v0, "stack_cta_h"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->r:Ljava/lang/Boolean;

    const-string v0, "stretch_cta_h"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->s:Ljava/lang/Boolean;

    const-string v0, "flip_hero_v"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->t:Ljava/lang/Boolean;

    const-string v0, "flip_hero_h"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->u:Ljava/lang/Boolean;

    const-string v0, "close"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->p:Ljava/lang/Boolean;

    const-string v0, "hero_split_ratio"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/g;->v:Ljava/lang/Double;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "auto_close"

    invoke-virtual {p0, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/batch/android/h0/g;->w:I

    iget-object v2, p1, Lcom/batch/android/h0/g;->v:Ljava/lang/Double;

    const-string v3, "PayloadParser"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-lez v2, :cond_0

    iget-object v2, p1, Lcom/batch/android/h0/g;->v:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    :cond_0
    const-string v2, "Hero split ratio is <= 0 or >= 1. Ignoring."

    invoke-static {v3, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lcom/batch/android/h0/g;->v:Ljava/lang/Double;

    :cond_1
    const-string v1, "cta"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->optJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/batch/android/h0/g;->l:Ljava/util/List;

    invoke-static {v1}, Lcom/batch/android/i0/b;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/b;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance p0, Lcom/batch/android/a0/g;

    new-instance v0, Lcom/batch/android/b0/a;

    invoke-direct {v0}, Lcom/batch/android/b0/a;-><init>()V

    iget-object v1, p1, Lcom/batch/android/h0/g;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p1

    :cond_4
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-23)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/batch/android/a0/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Parsing exception"

    invoke-static {v3, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-24)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/h;)Lcom/batch/android/h0/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 303
    const-string v0, "Parsing exception"

    const-string v1, "PayloadParser"

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/batch/android/h0/h;->i:Ljava/lang/String;

    .line 304
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Lcom/batch/android/h0/h;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 306
    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "URL isn\'t \'http\' or \'https\' (-31)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 308
    :cond_1
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "dev"

    invoke-virtual {p0, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p1, Lcom/batch/android/h0/h;->l:Z

    .line 309
    const-string v3, "inAppDeeplinks"

    invoke-virtual {p0, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p1, Lcom/batch/android/h0/h;->k:Z

    const/4 v2, 0x0

    .line 310
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timeout"

    invoke-virtual {p0, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/batch/android/h0/h;->j:I

    .line 311
    const-string v2, "style"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/batch/android/h0/h;->h:Ljava/lang/String;

    .line 312
    :try_start_1
    new-instance p0, Lcom/batch/android/a0/g;

    new-instance v2, Lcom/batch/android/b0/a;

    invoke-direct {v2}, Lcom/batch/android/b0/a;-><init>()V

    iget-object v3, p1, Lcom/batch/android/h0/h;->h:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p1

    .line 313
    :cond_2
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-23)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/batch/android/a0/a; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 314
    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-24)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :goto_1
    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Could not parse URL (-30)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 261
    const-string v0, "style"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/c;->h:Ljava/lang/String;

    .line 262
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "global_tap_delay"

    invoke-virtual {p0, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/batch/android/h0/c;->k:J

    .line 264
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "swipe_dismiss"

    invoke-virtual {p0, v4, v3}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p1, Lcom/batch/android/h0/c;->l:Z

    .line 265
    const-string v4, "image"

    invoke-virtual {p0, v4, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/batch/android/h0/c;->m:Ljava/lang/String;

    .line 266
    const-string v4, "image_description"

    invoke-virtual {p0, v4, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/batch/android/h0/c;->n:Ljava/lang/String;

    .line 267
    const-string v4, "close"

    invoke-virtual {p0, v4, v3}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p1, Lcom/batch/android/h0/c;->p:Z

    .line 268
    const-string v3, "auto_close"

    invoke-virtual {p0, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/batch/android/h0/c;->q:I

    .line 269
    const-string v2, "cta"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 270
    :goto_0
    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 271
    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONArray;->optJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    iget-object v4, p1, Lcom/batch/android/h0/c;->o:Ljava/util/List;

    invoke-static {v3}, Lcom/batch/android/i0/b;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/b;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    const-string v0, "action"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/a;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    .line 275
    :cond_2
    const-string v0, "cta_direction"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PayloadParser"

    if-eqz p0, :cond_5

    .line 276
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 278
    const-string p0, "Parsing error: base banner: \"cta_direction\" is neither \'h\' or \'v\': ignoring"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_3
    sget-object p0, Lcom/batch/android/h0/c$a;->c:Lcom/batch/android/h0/c$a;

    iput-object p0, p1, Lcom/batch/android/h0/c;->r:Lcom/batch/android/h0/c$a;

    goto :goto_2

    .line 280
    :cond_4
    sget-object p0, Lcom/batch/android/h0/c$a;->b:Lcom/batch/android/h0/c$a;

    iput-object p0, p1, Lcom/batch/android/h0/c;->r:Lcom/batch/android/h0/c$a;

    .line 281
    :cond_5
    :goto_2
    :try_start_0
    new-instance p0, Lcom/batch/android/a0/g;

    new-instance v1, Lcom/batch/android/b0/a;

    invoke-direct {v1}, Lcom/batch/android/b0/a;-><init>()V

    iget-object p1, p1, Lcom/batch/android/h0/c;->h:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object p0

    if-eqz p0, :cond_6

    return-void

    .line 282
    :cond_6
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-23)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/batch/android/a0/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 283
    const-string p1, "Parsing exception"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Style parsing exception (-24)"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const-string v0, "l"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "args"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    :cond_0
    new-instance v2, Lcom/batch/android/f0/b;

    invoke-direct {v2, v0, v1, p0}, Lcom/batch/android/f0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-object v2
.end method

.method public static c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/i0/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/h0/e;

    move-result-object v0

    const-string v1, "minapi"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Messaging"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v4, Lcom/batch/android/e/a0;->k:I

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "This SDK is too old to display this message. Please update it."

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/batch/android/i0/c;

    const-string v0, "SDK too old"

    invoke-direct {p0, v0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v1, "min_android_sdk"

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "This device is too old to display this message. Please update it."

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/batch/android/i0/c;

    const-string v0, "Device too old"

    invoke-direct {p0, v0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v1, "did"

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    const-string v1, "body"

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    const-string v1, "body_html"

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/h0/e;->g:Ljava/lang/String;

    const-string v1, "ed"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/batch/android/f0/c;->d:Lcom/batch/android/json/JSONObject;

    return-object v0
.end method

.method public static d(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;
        }
    .end annotation

    if-eqz p0, :cond_6

    :try_start_0
    invoke-static {p0}, Lcom/batch/android/i0/b;->c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object v0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    instance-of v1, v0, Lcom/batch/android/h0/a;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Lcom/batch/android/h0/a;

    invoke-static {p0, v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/a;)Lcom/batch/android/h0/a;

    move-result-object p0
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 3)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    instance-of v1, v0, Lcom/batch/android/h0/g;

    if-eqz v1, :cond_1

    :try_start_2
    check-cast v0, Lcom/batch/android/h0/g;

    invoke-static {p0, v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/g;)Lcom/batch/android/h0/g;

    move-result-object p0
    :try_end_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 4)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    instance-of v1, v0, Lcom/batch/android/h0/b;

    if-eqz v1, :cond_2

    :try_start_3
    check-cast v0, Lcom/batch/android/h0/b;

    invoke-static {p0, v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/b;)Lcom/batch/android/h0/b;

    move-result-object p0
    :try_end_3
    .catch Lcom/batch/android/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 6)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    instance-of v1, v0, Lcom/batch/android/h0/f;

    if-eqz v1, :cond_3

    :try_start_4
    check-cast v0, Lcom/batch/android/h0/f;

    invoke-static {p0, v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/f;)Lcom/batch/android/h0/f;

    move-result-object p0
    :try_end_4
    .catch Lcom/batch/android/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 7)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/batch/android/h0/d;

    if-eqz v1, :cond_4

    :try_start_5
    check-cast v0, Lcom/batch/android/h0/d;

    invoke-static {p0, v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/d;)Lcom/batch/android/h0/d;

    move-result-object p0
    :try_end_5
    .catch Lcom/batch/android/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 8)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    instance-of v1, v0, Lcom/batch/android/h0/h;

    if-eqz v1, :cond_5

    :try_start_6
    check-cast v0, Lcom/batch/android/h0/h;

    invoke-static {p0, v0}, Lcom/batch/android/i0/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/h0/h;)Lcom/batch/android/h0/h;

    move-result-object p0
    :try_end_6
    .catch Lcom/batch/android/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 9)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    return-object v0

    :catch_6
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Error while decoding the JSON payload (code 2)"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    new-instance p0, Lcom/batch/android/i0/c;

    const-string v0, "The payload cannot be null"

    invoke-direct {p0, v0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;
        }
    .end annotation

    const-string v0, "ld2"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/batch/android/e/a;

    invoke-direct {v0}, Lcom/batch/android/e/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/batch/android/e/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/q;->a([B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/batch/android/i0/a;->g(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/batch/android/e/a$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    invoke-direct {v0, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-string v0, "ld"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/i0/b;->d(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object p0
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/batch/android/i0/c;

    invoke-direct {v0, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string v0, "No mobile landing payload found"

    invoke-direct {p0, v0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/batch/android/i0/a;->g(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object v0
    :try_end_0
    .catch Lcom/batch/android/i0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/batch/android/i0/b;->d(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object v0
    :try_end_1
    .catch Lcom/batch/android/i0/c; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string v0, "Failed parsing the landing message payload"

    invoke-direct {p0, v0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method
