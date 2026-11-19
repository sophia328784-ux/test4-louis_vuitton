.class public Lcom/batch/android/json/JSONStringer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/json/JSONStringer$a;
    }
.end annotation


# instance fields
.field private final indent:Ljava/lang/String;

.field final out:Ljava/lang/StringBuilder;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/json/JSONStringer$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->indent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    new-array p1, p1, [C

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/batch/android/json/JSONStringer;->indent:Ljava/lang/String;

    return-void
.end method

.method private beforeKey()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->peek()Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->newline()V

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->replaceTop(Lcom/batch/android/json/JSONStringer$a;)V

    return-void

    :cond_1
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-void
.end method

.method private beforeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->peek()Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->replaceTop(Lcom/batch/android/json/JSONStringer$a;)V

    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->newline()V

    return-void

    :cond_1
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->newline()V

    return-void

    :cond_2
    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->indent:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ":"

    goto :goto_0

    :cond_3
    const-string v1, ": "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONStringer;->replaceTop(Lcom/batch/android/json/JSONStringer$a;)V

    return-void

    :cond_4
    sget-object p0, Lcom/batch/android/json/JSONStringer$a;->g:Lcom/batch/android/json/JSONStringer$a;

    if-ne v0, p0, :cond_5

    :goto_1
    return-void

    :cond_5
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-void
.end method

.method private newline()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->indent:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/batch/android/json/JSONStringer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private peek()Lcom/batch/android/json/JSONStringer$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/json/JSONStringer$a;

    return-object p0

    :cond_0
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private replaceTop(Lcom/batch/android/json/JSONStringer$a;)V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    iget-object v4, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\\u%04x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public array()Lcom/batch/android/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONStringer;->open(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object p0

    return-object p0
.end method

.method public close(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->peek()Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->newline()V

    :cond_2
    iget-object p1, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public endArray()Lcom/batch/android/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, "]"

    invoke-virtual {p0, v0, v1, v2}, Lcom/batch/android/json/JSONStringer;->close(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object p0

    return-object p0
.end method

.method public endObject()Lcom/batch/android/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    const-string v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Lcom/batch/android/json/JSONStringer;->close(Lcom/batch/android/json/JSONStringer$a;Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object p0

    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->beforeKey()V

    invoke-direct {p0, p1}, Lcom/batch/android/json/JSONStringer;->string(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "Names must be non-null"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public object()Lcom/batch/android/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONStringer;->open(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;

    move-result-object p0

    return-object p0
.end method

.method public open(Lcom/batch/android/json/JSONStringer$a;Ljava/lang/String;)Lcom/batch/android/json/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Nesting problem: multiple top-level roots"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->beforeValue()V

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value(D)Lcom/batch/android/json/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->beforeValue()V

    .line 85
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 86
    :cond_0
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public value(J)Lcom/batch/android/json/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->beforeValue()V

    .line 89
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0

    .line 90
    :cond_0
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public value(Ljava/lang/Object;)Lcom/batch/android/json/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/batch/android/json/JSONArray;

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONArray;->writeTo(Lcom/batch/android/json/JSONStringer;)V

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/batch/android/json/JSONObject;

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->writeTo(Lcom/batch/android/json/JSONStringer;)V

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->beforeValue()V

    if-eqz p1, :cond_4

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/batch/android/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/json/JSONStringer;->string(Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0

    :cond_5
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public value(Z)Lcom/batch/android/json/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/batch/android/json/JSONStringer;->beforeValue()V

    .line 81
    iget-object v0, p0, Lcom/batch/android/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0

    .line 82
    :cond_0
    const-string p0, "Nesting problem"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
