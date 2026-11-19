.class final Lcom/networkbench/com/google/gson/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/JsonDeserializer;
.implements Lcom/networkbench/com/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/networkbench/com/google/gson/JsonDeserializer<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/networkbench/com/google/gson/JsonSerializer<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;

.field private final b:Ljava/text/DateFormat;

.field private final c:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 34
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/networkbench/com/google/gson/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 29
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/networkbench/com/google/gson/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 31
    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/networkbench/com/google/gson/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/networkbench/com/google/gson/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/a;->a:Ljava/text/DateFormat;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/a;->b:Ljava/text/DateFormat;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/a;->c:Ljava/text/DateFormat;

    const-string p0, "UTC"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonElement;)Ljava/util/Date;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/networkbench/com/google/gson/a;->b:Ljava/text/DateFormat;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/networkbench/com/google/gson/a;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 64
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/networkbench/com/google/gson/a;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0

    .line 65
    :catch_1
    :try_start_4
    iget-object p0, p0, Lcom/networkbench/com/google/gson/a;->c:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    return-object p0

    :catch_2
    move-exception p0

    .line 66
    new-instance v1, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/JsonSerializationContext;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/networkbench/com/google/gson/a;->b:Ljava/text/DateFormat;

    monitor-enter p2

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/com/google/gson/a;->a:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonParseException;
        }
    .end annotation

    instance-of p3, p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/a;->a(Lcom/networkbench/com/google/gson/JsonElement;)Ljava/util/Date;

    move-result-object p0

    const-class p1, Ljava/util/Date;

    if-ne p2, p1, :cond_0

    return-object p0

    :cond_0
    const-class p1, Ljava/sql/Timestamp;

    if-ne p2, p1, :cond_1

    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_1
    const-class p1, Ljava/sql/Date;

    if-ne p2, p1, :cond_2

    new-instance p1, Ljava/sql/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Date;-><init>(J)V

    return-object p1

    :cond_2
    const-class p0, Lcom/networkbench/com/google/gson/a;

    const-string p1, " cannot deserialize to "

    invoke-static {p0, p1, p2}, La61;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Lcom/networkbench/com/google/gson/JsonParseException;

    const-string p1, "The date should be a string value"

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic deserialize(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/networkbench/com/google/gson/a;->a(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/JsonDeserializationContext;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/JsonSerializationContext;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/networkbench/com/google/gson/a;->a(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/JsonSerializationContext;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/com/google/gson/a;->b:Ljava/text/DateFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
