.class public abstract Lcom/networkbench/agent/impl/webview/b;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b;->c:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b;->a:Ljava/lang/String;

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/b;->b:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonPrimitive;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public k()Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b;->c:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/b;->a:Ljava/lang/String;

    return-object p0
.end method
