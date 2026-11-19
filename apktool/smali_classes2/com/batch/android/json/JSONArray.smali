.class public Lcom/batch/android/json/JSONArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/json/JSONTokener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/batch/android/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 71
    instance-of v0, p1, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/batch/android/json/JSONArray;

    iget-object p1, p1, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    iput-object p1, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    return-void

    .line 73
    :cond_0
    const-string p0, "JSONArray"

    invoke-static {p1, p0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/batch/android/json/JSONException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a primitive array: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/batch/android/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONArray;-><init>(Lcom/batch/android/json/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/batch/android/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkedPut(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/json/JSON;->checkDouble(D)D

    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/batch/android/json/JSONArray;

    iget-object p1, p1, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const-string v0, "Value at "

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/batch/android/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Index "

    const-string v2, " out of range [0.."

    invoke-static {p1, v1, v2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "boolean"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public getDouble(I)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "double"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public getInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "int"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public getJSONArray(I)Lcom/batch/android/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/batch/android/json/JSONArray;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "JSONArray"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public getJSONObject(I)Lcom/batch/android/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/batch/android/json/JSONObject;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "JSONObject"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public getLong(I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "long"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "String"

    invoke-static {p1, p0, v0}, Lcom/batch/android/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public isNull(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0}, Lcom/batch/android/json/JSONStringer;-><init>()V

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->g:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONStringer;->open(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    iget-object v1, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-lez v3, :cond_0

    iget-object v4, v0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/batch/android/json/JSONStringer;->value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/batch/android/json/JSONStringer$a;->g:Lcom/batch/android/json/JSONStringer$a;

    invoke-virtual {v0, p0, p0, v2}, Lcom/batch/android/json/JSONStringer;->close(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    iget-object p0, v0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public optBoolean(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->optBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public optBoolean(IZ)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public optDouble(I)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/batch/android/json/JSONArray;->optDouble(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method public optDouble(ID)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public optInt(I)I
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->optInt(II)I

    move-result p0

    return p0
.end method

.method public optInt(II)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public optJSONArray(I)Lcom/batch/android/json/JSONArray;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/batch/android/json/JSONArray;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/batch/android/json/JSONArray;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public optJSONObject(I)Lcom/batch/android/json/JSONObject;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/batch/android/json/JSONObject;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/batch/android/json/JSONObject;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public optLong(I)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/batch/android/json/JSONArray;->optLong(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public optLong(IJ)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public put(D)Lcom/batch/android/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/batch/android/json/JSON;->checkDouble(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(I)Lcom/batch/android/json/JSONArray;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(ID)Lcom/batch/android/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 38
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public put(II)Lcom/batch/android/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public put(IJ)Lcom/batch/android/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/json/JSON;->checkDouble(D)D

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    if-gt v0, p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(IZ)Lcom/batch/android/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/json/JSONArray;->put(ILjava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public put(J)Lcom/batch/android/json/JSONArray;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Z)Lcom/batch/android/json/JSONArray;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toJSONObject(Lcom/batch/android/json/JSONArray;)Lcom/batch/android/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0}, Lcom/batch/android/json/JSONStringer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->writeTo(Lcom/batch/android/json/JSONStringer;)V

    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/batch/android/json/JSONStringer;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONStringer;-><init>(I)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->writeTo(Lcom/batch/android/json/JSONStringer;)V

    .line 17
    invoke-virtual {v0}, Lcom/batch/android/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/batch/android/json/JSONStringer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/batch/android/json/JSONStringer;->array()Lcom/batch/android/json/JSONStringer;

    iget-object p0, p0, Lcom/batch/android/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONStringer;->value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONStringer;->endArray()Lcom/batch/android/json/JSONStringer;

    return-void
.end method
