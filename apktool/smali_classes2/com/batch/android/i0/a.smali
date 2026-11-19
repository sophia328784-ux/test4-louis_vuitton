.class public final Lcom/batch/android/i0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/i0/a;

.field public static final b:Ljava/lang/String; = "#FFFFFFFF"

.field public static final c:Ljava/lang/String; = "#000000FF"

.field private static final d:I = 0x0

.field private static final e:I = 0x4

.field private static final f:I = 0x0

.field private static final g:I = 0x0

.field private static final h:I = 0xc

.field private static final i:I = 0x0

.field public static final j:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/i0/a;

    invoke-direct {v0}, Lcom/batch/android/i0/a;-><init>()V

    sput-object v0, Lcom/batch/android/i0/a;->a:Lcom/batch/android/i0/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 95
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 151
    return-void
.end method

.method public static final g(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/i0/c;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v0, "minMLvl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/batch/android/e/a0;->k:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Messaging"

    const-string v0, "This SDK is too old to display this message. Please update it."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/batch/android/i0/c;

    const-string v0, "SDK too old"

    invoke-direct {p0, v0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "format"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/batch/android/g0/d$d;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$d;

    move-result-object v4

    sget-object v0, Lcom/batch/android/i0/a;->a:Lcom/batch/android/i0/a;

    const-string v3, "root"

    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/f;

    move-result-object v5

    const-string v3, "position"

    const-string v6, "center"

    invoke-virtual {p0, v3, v6}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/batch/android/g0/d$i;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$i;

    move-result-object v6

    const-string v2, "closeOptions"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/b;

    move-result-object v7

    const-string v2, "texts"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/i0/a;->f(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    const-string v2, "urls"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/i0/a;->f(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    const-string v2, "actions"

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    new-instance v3, Lcom/batch/android/g0/a;

    invoke-direct/range {v3 .. v10}, Lcom/batch/android/g0/a;-><init>(Lcom/batch/android/g0/d$d;Lcom/batch/android/g0/f;Lcom/batch/android/g0/d$i;Lcom/batch/android/g0/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    const-string v0, "trackingId"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/batch/android/f0/c;->c:Ljava/lang/String;

    const-string v0, "eventData"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    iput-object p0, v3, Lcom/batch/android/f0/c;->d:Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Failed parsing mobile landing."

    invoke-direct {v0, v1, p0}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c$c;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Lcom/batch/android/g0/c$c;

    .line 97
    const-string v1, "ratios"

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batch/android/i0/a;->b(Lcom/batch/android/json/JSONArray;)[F

    move-result-object v1

    .line 98
    const-string v2, "spacing"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    const-string v3, "margin"

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v3

    .line 100
    const-string v4, "contentAlign"

    const-string v5, "center"

    invoke-virtual {p1, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {v4}, Lcom/batch/android/g0/d$i;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$i;

    move-result-object v4

    .line 102
    const-string v5, "children"

    invoke-virtual {p1, v5}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;Lcom/batch/android/g0/d$d;)Ljava/util/List;

    move-result-object v5

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/g0/c$c;-><init>([FILcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$i;Ljava/util/List;)V

    return-object v0

    .line 104
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Columns cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;
    .locals 2

    const-string p0, "#000000FF"

    const-string v0, "#FFFFFFFF"

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Lcom/batch/android/g0/d$h;

    invoke-direct {p1, v0, p0}, Lcom/batch/android/g0/d$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq v1, p0, :cond_1

    .line 112
    new-instance v1, Lcom/batch/android/g0/d$h;

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p0}, Lcom/batch/android/g0/d$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 113
    :cond_1
    new-instance p0, Lcom/batch/android/g0/d$h;

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v1, p1}, Lcom/batch/android/g0/d$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 114
    :cond_2
    new-instance p1, Lcom/batch/android/g0/d$h;

    invoke-direct {p1, v0, p0}, Lcom/batch/android/g0/d$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/batch/android/json/JSONArray;Lcom/batch/android/g0/d$d;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            "Lcom/batch/android/g0/d$d;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/batch/android/g0/c$e;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6, v5}, Lcom/batch/android/g0/c$e;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "columns"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4, p2}, Lcom/batch/android/i0/a;->b(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/batch/android/g0/c$b;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Columns component cannot have columns children"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "children cannot be null or empty"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/f0/a;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/batch/android/f0/a;

    const-string v4, "action"

    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "params"

    invoke-virtual {v2, v5}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/batch/android/f0/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p0}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "divider"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->e(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$d;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string p2, "webview"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->i(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$k;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string v2, "columns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c$c;

    move-result-object p0

    return-object p0

    :sswitch_3
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/i0/a;->c(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c$g;

    move-result-object p0

    return-object p0

    :sswitch_4
    const-string p2, "text"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->h(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$i;

    move-result-object p0

    return-object p0

    :sswitch_5
    const-string v2, "spacer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/i0/a;->e(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c$h;

    move-result-object p0

    return-object p0

    :sswitch_6
    const-string p2, "button"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$a;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    new-instance p0, Lcom/batch/android/i0/c;

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown component type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Component cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x521dd8ce -> :sswitch_6
        -0x356acfd4 -> :sswitch_5
        0x36452d -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0x389b97dd -> :sswitch_2
        0x48fb3bf9 -> :sswitch_1
        0x63cc1319 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/d$a;
    .locals 4

    if-eqz p1, :cond_1

    .line 152
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "borderColor"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v1, Lcom/batch/android/g0/d$a;

    const/4 v3, 0x0

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 155
    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object p0

    .line 156
    invoke-direct {v1, v0, p0}, Lcom/batch/android/g0/d$a;-><init>(ILcom/batch/android/g0/d$h;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lcom/batch/android/json/JSONArray;Lcom/batch/android/g0/d$d;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            "Lcom/batch/android/g0/d$d;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    .line 148
    invoke-virtual {p0, v3, p2}, Lcom/batch/android/i0/a;->b(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "children cannot be null or empty"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/batch/android/json/JSONArray;)[F
    .locals 6

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result p0

    new-array v0, p0, [F

    .line 158
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 159
    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 160
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v2, p0, :cond_1

    .line 161
    aget v3, v0, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 163
    :cond_2
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Sum of columns ratio must be 1 or 100"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_3
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Columns ratio cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/batch/android/g0/c$a;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "backgroundColor"

    invoke-virtual {v1, v4}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v4

    const-string v5, "textColor"

    invoke-virtual {v1, v5}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v5

    const-string v6, "margin"

    invoke-virtual {v1, v6}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v6

    const-string v7, "padding"

    invoke-virtual {v1, v7}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v7

    move-object v8, v2

    move-object v2, v4

    move-object v4, v6

    new-instance v6, Lcom/batch/android/g0/d$g;

    const-string v9, "width"

    const-string v10, "100%"

    invoke-virtual {v1, v9, v10}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v9}, Lcom/batch/android/g0/d$g;-><init>(Ljava/lang/String;)V

    const-string v9, "align"

    const-string v10, "center"

    invoke-virtual {v1, v9, v10}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/batch/android/g0/d$e;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$e;

    move-result-object v9

    const-string v12, "radius"

    invoke-virtual {v1, v12}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/batch/android/i0/a;->e(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$b;

    move-result-object v12

    move-object v13, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v9

    invoke-virtual/range {p0 .. p1}, Lcom/batch/android/i0/a;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/d$a;

    move-result-object v9

    const-string v14, "textAlign"

    invoke-virtual {v1, v14, v10}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/batch/android/g0/d$e;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$e;

    move-result-object v10

    const-string v11, "fontDecoration"

    invoke-virtual {v1, v11}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/batch/android/i0/a;->c(Lcom/batch/android/json/JSONArray;)Ljava/util/Set;

    move-result-object v11

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "fontSize"

    invoke-virtual {v1, v14, v0}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "maxLines"

    invoke-virtual {v1, v15, v14}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v16, v12

    move v12, v0

    move-object v0, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v13

    move v13, v1

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v13}, Lcom/batch/android/g0/c$a;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/batch/android/i0/c;

    const-string v1, "Button cannot be null"

    invoke-direct {v0, v1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c$g;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    .line 208
    new-instance v2, Lcom/batch/android/g0/d$g;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/batch/android/g0/d$g;-><init>(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne p2, v0, :cond_1

    invoke-virtual {v2}, Lcom/batch/android/g0/d$g;->f()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Image cannot have fill value in a Modal format"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_1
    :goto_0
    new-instance v0, Lcom/batch/android/g0/c$g;

    .line 212
    const-string p2, "id"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    const-string p2, "margin"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v3

    .line 214
    sget-object p2, Lcom/batch/android/g0/c$g$a;->c:Lcom/batch/android/g0/c$g$a;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "aspect"

    invoke-virtual {p1, v4, p2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    invoke-static {p2}, Lcom/batch/android/g0/c$g$a;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/c$g$a;

    move-result-object v4

    .line 217
    const-string p2, "radius"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->e(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$b;

    move-result-object v5

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/g0/c$g;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/c$g$a;Lcom/batch/android/g0/d$b;)V

    return-object v0

    .line 219
    :cond_2
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Image cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lcom/batch/android/json/JSONArray;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    if-nez p1, :cond_0

    .line 221
    sget-object p0, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    return-object p0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 223
    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/batch/android/g0/d$c;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$c;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/b;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 95
    :cond_0
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    const-string v1, "color"

    if-nez v0, :cond_1

    move-object v2, p0

    goto :goto_0

    .line 96
    :cond_1
    new-instance v2, Lcom/batch/android/g0/b$a;

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/batch/android/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/batch/android/i0/a;->a:Lcom/batch/android/i0/a;

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/batch/android/g0/b$a;-><init>(ILcom/batch/android/g0/d$h;)V

    .line 97
    :goto_0
    const-string v0, "button"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    new-instance p0, Lcom/batch/android/g0/b$b;

    .line 99
    sget-object v0, Lcom/batch/android/i0/a;->a:Lcom/batch/android/i0/a;

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v1

    .line 100
    const-string v3, "backgroundColor"

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/batch/android/json/JSONArray;

    invoke-direct {p1}, Lcom/batch/android/json/JSONArray;-><init>()V

    const-string v3, "#00000000"

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    .line 101
    :cond_3
    invoke-virtual {v0, p1}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object p1

    .line 102
    invoke-direct {p0, v1, p1}, Lcom/batch/android/g0/b$b;-><init>(Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;)V

    .line 103
    :goto_1
    new-instance p1, Lcom/batch/android/g0/b;

    invoke-direct {p1, v2, p0}, Lcom/batch/android/g0/b;-><init>(Lcom/batch/android/g0/b$a;Lcom/batch/android/g0/b$b;)V

    return-object p1
.end method

.method public final d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/batch/android/g0/d$f;

    invoke-direct {p1, p0}, Lcom/batch/android/g0/d$f;-><init>(I)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    new-instance v0, Lcom/batch/android/g0/d$f;

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/batch/android/g0/d$f;-><init>(IIII)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Cannot parse margin array with more than 4 values"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Cannot parse margin array with 3 values"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lcom/batch/android/g0/d$f;

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/batch/android/g0/d$f;-><init>(II)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/batch/android/g0/d$f;

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/batch/android/g0/d$f;-><init>(I)V

    return-object v0

    :cond_5
    new-instance p1, Lcom/batch/android/g0/d$f;

    invoke-direct {p1, p0}, Lcom/batch/android/g0/d$f;-><init>(I)V

    return-object p1
.end method

.method public final d(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/f;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Lcom/batch/android/g0/f;

    .line 105
    const-string v1, "children"

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/batch/android/i0/a;->b(Lcom/batch/android/json/JSONArray;Lcom/batch/android/g0/d$d;)Ljava/util/List;

    move-result-object v1

    .line 106
    const-string p2, "backgroundColor"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v2

    .line 107
    const-string p2, "margin"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v3

    .line 108
    const-string p2, "radius"

    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/batch/android/i0/a;->e(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$b;

    move-result-object v4

    .line 109
    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/d$a;

    move-result-object v5

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/g0/f;-><init>(Ljava/util/List;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;)V

    return-object v0

    .line 111
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Root container cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$d;
    .locals 6

    if-eqz p1, :cond_0

    .line 100
    new-instance v0, Lcom/batch/android/g0/c$d;

    const/4 v1, 0x0

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thickness"

    invoke-virtual {p1, v2, v1}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 102
    const-string v2, "color"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v2

    .line 103
    new-instance v3, Lcom/batch/android/g0/d$g;

    const-string v4, "width"

    const-string v5, "100%"

    invoke-virtual {p1, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/batch/android/g0/d$g;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v4, "align"

    const-string v5, "center"

    invoke-virtual {p1, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/batch/android/g0/d$e;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$e;

    move-result-object v4

    .line 105
    const-string v5, "margin"

    invoke-virtual {p1, v5}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v5

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/g0/c$d;-><init>(ILcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$f;)V

    return-object v0

    .line 107
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Divider cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/batch/android/json/JSONObject;Lcom/batch/android/g0/d$d;)Lcom/batch/android/g0/c$h;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    .line 95
    new-instance p0, Lcom/batch/android/g0/d$g;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$g;-><init>(Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/g0/d$g;->f()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Spacer cannot have fill value in a Modal format"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    :goto_0
    new-instance p1, Lcom/batch/android/g0/c$h;

    invoke-direct {p1, p0}, Lcom/batch/android/g0/c$h;-><init>(Lcom/batch/android/g0/d$g;)V

    return-object p1

    .line 99
    :cond_2
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Columns cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$b;
    .locals 5

    const/4 p0, 0x4

    if-nez p1, :cond_0

    new-instance p1, Lcom/batch/android/g0/d$b;

    invoke-direct {p1, p0}, Lcom/batch/android/g0/d$b;-><init>(I)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-ne v0, p0, :cond_1

    new-instance p0, Lcom/batch/android/g0/d$b;

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v4}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/batch/android/g0/d$b;-><init>(IIII)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Cannot parse radius array with more than 4 values"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Cannot parse radius array with 3 values"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/batch/android/g0/d$b;

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/batch/android/g0/d$b;-><init>(II)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/batch/android/g0/d$b;

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$b;-><init>(I)V

    return-object p0

    :cond_5
    new-instance p1, Lcom/batch/android/g0/d$b;

    invoke-direct {p1, p0}, Lcom/batch/android/g0/d$b;-><init>(I)V

    return-object p1
.end method

.method public final f(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final h(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$i;
    .locals 8

    if-eqz p1, :cond_0

    new-instance v0, Lcom/batch/android/g0/c$i;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "color"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batch/android/i0/a;->a(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$h;

    move-result-object v2

    const-string v3, "margin"

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/batch/android/i0/a;->d(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/g0/d$f;

    move-result-object v3

    const-string v4, "textAlign"

    const-string v5, "center"

    invoke-virtual {p1, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/batch/android/g0/d$e;->valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$e;

    move-result-object v4

    const-string v5, "fontDecoration"

    invoke-virtual {p1, v5}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/batch/android/i0/a;->c(Lcom/batch/android/json/JSONArray;)Ljava/util/Set;

    move-result-object v5

    const/16 p0, 0xc

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v6, "fontSize"

    invoke-virtual {p1, v6, p0}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v7, "maxLines"

    invoke-virtual {p1, v7, p0}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/batch/android/g0/c$i;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "Text cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/g0/c$k;
    .locals 5

    if-eqz p1, :cond_0

    new-instance p0, Lcom/batch/android/g0/c$k;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timeout"

    invoke-virtual {p1, v2, v1}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "inAppDeeplinks"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "devMode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/batch/android/g0/c$k;-><init>(Ljava/lang/String;IZZ)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/i0/c;

    const-string p1, "WebView cannot be null"

    invoke-direct {p0, p1}, Lcom/batch/android/i0/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method
