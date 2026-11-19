.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/ArrayList;

.field public final m:J

.field public final n:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->r:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->a:Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->b:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->h:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->j:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->k:Ljava/lang/String;

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->n:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->a:Lorg/json/JSONObject;

    const-string v0, "mkId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->b:J

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->c:Ljava/lang/String;

    const-string v0, "guid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e:Ljava/lang/String;

    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->f:Ljava/lang/String;

    const-string v0, "thumbnailURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->g:Ljava/lang/String;

    const-string v0, "previewImgURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "downloadURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->h:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "publishDate"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "expiredDate"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v0, "liveMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v0, "statusCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    const-string v0, "downloadFileSize"

    invoke-virtual {p1, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->j:J

    const-string v0, "inZipURL"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->k:Ljava/lang/String;

    const-string v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "reference_elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;-><init>(Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v2, "filterGUID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    const-string v2, "backgroundGUID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->p:Ljava/lang/String;

    const-string v2, "custom_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->q:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->q:Ljava/lang/String;

    :goto_3
    const-string v0, "lastModified"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_5
    iput-wide v5, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    const-string v0, "zipInfo"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    invoke-virtual {v0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    if-nez p1, :cond_6

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    :cond_6
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->n:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "makeup"

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;
    .locals 1

    const-string v0, "NailLook"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    return-object p0

    :cond_0
    const-string v0, "JewelryLook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    return-object p0
.end method
