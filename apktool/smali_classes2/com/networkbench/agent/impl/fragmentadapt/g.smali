.class public Lcom/networkbench/agent/impl/fragmentadapt/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/networkbench/agent/impl/fragmentadapt/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/networkbench/agent/impl/fragmentadapt/g;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->d:Ljava/lang/String;

    sput-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->c:Ljava/lang/String;

    sput-object p0, Lcom/networkbench/agent/impl/fragmentadapt/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->b:Ljava/lang/String;

    sput-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->a:Ljava/lang/String;

    sput-object p0, Lcom/networkbench/agent/impl/fragmentadapt/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/fragmentadapt/g;->e:Lorg/json/JSONObject;

    return-object v0
.end method
