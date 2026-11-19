.class public Lcom/networkbench/agent/impl/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "NBSAgent"

.field private static b:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->NONE:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    sput-object v0, Lcom/networkbench/agent/impl/c/j;->b:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)V
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/c/j;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 156
    monitor-exit v0

    return-void

    .line 157
    :cond_0
    :try_start_0
    sput-object p0, Lcom/networkbench/agent/impl/c/j;->b:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V
    .locals 4

    .line 151
    sget-object v0, Lcom/networkbench/agent/impl/c/j$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const-string v1, "NBSAgent"

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v3, 0x3

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 152
    invoke-static {p1, v2, v1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 153
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void

    .line 154
    :cond_2
    invoke-static {p1, v3, v1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 155
    :cond_3
    invoke-static {p1, v0, v1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 145
    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->DEBUG:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xfa0

    if-le p2, v0, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "sb.length = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    div-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_9

    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v2, v1, 0xfa0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    :cond_0
    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    :cond_2
    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_4

    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    :cond_4
    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_6

    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    :cond_6
    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_8

    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    :cond_8
    mul-int/lit16 v0, v0, 0xfa0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/type/Harvestable;)V
    .locals 1

    .line 147
    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->DEBUG:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {p0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 149
    invoke-interface {p1}, Lcom/networkbench/agent/impl/harvest/type/Harvestable;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 150
    sget-object p0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->ERROR:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 28
    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->INFO:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/type/Harvestable;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->INFO:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lcom/networkbench/agent/impl/harvest/type/Harvestable;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z
    .locals 2

    .line 30
    sget-object v0, Lcom/networkbench/agent/impl/c/j;->b:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    sget-object v1, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->NONE:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->getLevel()I

    move-result p0

    sget-object v0, Lcom/networkbench/agent/impl/c/j;->b:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->getLevel()I

    move-result v0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->INFO:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->WARNING:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;->ERROR:Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/j;->a(Lcom/networkbench/agent/impl/pubapi/NBSLogLevel;Ljava/lang/String;)V

    return-void
.end method
