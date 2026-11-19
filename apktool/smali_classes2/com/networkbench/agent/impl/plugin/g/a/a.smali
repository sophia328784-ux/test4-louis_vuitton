.class public final Lcom/networkbench/agent/impl/plugin/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "<iframe src=\""

.field private static final b:Ljava/lang/String; = ".php"

.field private static final c:Ljava/lang/String; = "<tr>"

.field private static final d:Ljava/lang/String; = "</table>"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a/a;->d()[Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a/a;->c()[Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "119.29.29.29"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v2, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a/a;->d()[Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a/a;->c()[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static c()[Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static d()[Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
