.class public Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;


# static fields
.field public static final b:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

.field public static final c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    sget-object v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->ERROR:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    iput-object v1, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    new-instance v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->b:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    new-instance v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    new-instance v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->a:Ljava/lang/String;

    return-void
.end method

.method public static f(Lorg/json/JSONObject;Ljava/lang/String;III)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "parsing v3 config: expected JSON property \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" to be an Integer, but it was not"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_0
    return p4
.end method

.method public static g(Lorg/json/JSONObject;Ljava/lang/String;IIII)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    if-le p0, p3, :cond_1

    return p5

    :cond_1
    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "parsing v3 config: expected JSON property \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" to be an Integer, but it was not"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return p4
.end method

.method public static h(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "maxBeaconSizeKb"

    iget v3, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "selfmonitoring"

    iget-boolean v3, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iget v3, v2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    int-to-long v3, v3

    const-string v5, "maxSessionDurationMins"

    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget v2, v2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    int-to-long v2, v2

    const-string v4, "sessionTimeoutSec"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sendIntervalSec"

    iget v3, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "maxCachedCrashesCount"

    iget v3, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "tapDuration"

    iget v5, v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "dispersionRadius"

    iget v5, v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "timespanDifference"

    iget v5, v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "minimumNumberOfTaps"

    iget v2, v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "rageTapConfig"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "protocolVersion"

    iget v5, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->f:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "pixelCopy"

    iget-boolean v5, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->h:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "colorMasking"

    iget-boolean v5, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->i:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "composeEnabled"

    iget-boolean v5, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->j:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "replayConfig"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mobileAgentConfig"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "capture"

    iget-boolean v6, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->a:Z

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "imageRetentionTimeInMinutes"

    iget v6, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->e:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v5, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->b:Z

    const-string v6, "trafficControlPercentage"

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->d:I

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "crashesEnabled"

    iget-boolean v2, v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->c:Z

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gen3Enabled"

    iget-boolean v3, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "appConfig"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "serverId"

    iget p0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "dynamicConfig"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parsing v3 config: expected JSON property \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" to be a Boolean, but it was not"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return p2
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lorg/json/JSONObject;)V
    .locals 8

    const-string p0, "status"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "Error status detected"

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->OK:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    iput-object p0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    const-string p0, "multiplicity"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const v5, 0x7fffffff

    const/4 v6, 0x1

    const-string v3, "multiplicity"

    const/4 v4, 0x0

    move v7, v6

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->g(Lorg/json/JSONObject;Ljava/lang/String;IIII)I

    move-result p0

    iput p0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->k:I

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    const-string p0, "serverId"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const v5, 0x7fffffff

    const/4 v6, 0x1

    const-string v3, "serverId"

    const/4 v4, 0x0

    move v7, v6

    invoke-static/range {v2 .. v7}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->g(Lorg/json/JSONObject;Ljava/lang/String;IIII)I

    move-result p0

    iput p0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    :cond_3
    const-string p0, "switchServer"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0, v2, v1}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p0

    iput-boolean p0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->m:Z

    :cond_4
    return-void
.end method

.method public final b(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "applicationId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "No application id"

    invoke-direct {p0, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "capture"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v4, "capture"

    const/4 v5, 0x0

    move v8, v7

    move-object v3, p3

    invoke-static/range {v3 .. v8}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->g(Lorg/json/JSONObject;Ljava/lang/String;IIII)I

    move-result p3

    iput p3, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    goto :goto_1

    :cond_2
    move-object v3, p3

    :goto_1
    const-string p3, "trafficControlPercentage"

    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v6, 0x64

    const/16 v7, 0x64

    const-string v4, "trafficControlPercentage"

    const/4 v5, 0x1

    move v8, v7

    invoke-static/range {v3 .. v8}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->g(Lorg/json/JSONObject;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->h:I

    :cond_3
    const-string v0, "gen3Enabled"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, v3, v2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->i:Z

    :cond_4
    const-string p1, "replayConfig"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0, v3, v2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->a:Z

    :cond_5
    const-string p0, "crashesEnabled"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0, v3, v2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->c:Z

    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->b:Z

    :cond_6
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 v7, 0x0

    const/16 v8, 0x64

    const-string v4, "trafficControlPercentage"

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-static/range {v3 .. v8}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->g(Lorg/json/JSONObject;Ljava/lang/String;IIII)I

    move-result p0

    iput p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->d:I

    :cond_7
    const-string p0, "imageRetentionTimeInMinutes"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7fffffff

    invoke-static {v3, p0, v2, p1, v2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result p0

    iput p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->e:I

    :cond_8
    return-void
.end method

.method public final c(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;
    .locals 10

    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "dynamicConfig"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "timestamp"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->b:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    if-eqz v2, :cond_1

    const-string v2, "appConfig"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "mobileAgentConfig"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->p:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    new-instance v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {v5}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    iget-wide v8, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    cmp-long v1, v6, v8

    if-gtz v1, :cond_0

    return-object p1

    :cond_0
    iput-wide v6, v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    sget-object p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->k:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    new-instance p1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;

    invoke-direct {p1}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;-><init>()V

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v5, p1, v1}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->e(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0, v5, p1, v1}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-direct {v1, p1}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;)V

    iput-object v1, v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    goto :goto_0

    :catch_0
    return-object v3

    :catch_1
    const-string p0, "parsing v3 config: timestamp must be of type long"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    const/4 v1, 0x1

    invoke-direct {v5, p1, v1}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :try_start_2
    invoke-virtual {p0, v5, p1}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p0, v5}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    return-object p0

    :catch_2
    return-object v3

    :cond_2
    new-instance p0, Lcom/dynatrace/android/agent/comm/InvalidConfigurationException;

    const-string p1, "The configuration is missing the dynamicConfig block"

    invoke-direct {p0, p1}, Lcom/dynatrace/android/agent/comm/InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/util/HashMap;Lcom/dynatrace/android/agent/conf/AgentMode;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;
    .locals 7

    new-instance p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {p0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    sget-object v0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "cp"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    const-string v1, "si"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v2, 0x3c

    const/16 v5, 0x21c

    const/16 v6, 0x78

    invoke-static/range {v1 .. v6}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->d:I

    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v2, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    sget-object v0, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne p2, v0, :cond_0

    const/16 p2, 0x1e

    :goto_0
    move v5, p2

    goto :goto_1

    :cond_0
    const/16 p2, 0x96

    goto :goto_0

    :goto_1
    const-string v0, "bl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v4, 0x7fffffff

    invoke-static/range {v0 .. v5}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->a:I

    sget-object p2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    new-instance p2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;

    invoke-direct {p2}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;-><init>()V

    const-string v0, "st"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v5, 0x258

    invoke-static/range {v0 .. v5}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result v0

    iput v0, p2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->b:I

    new-instance v0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-direct {v0, p2}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    const-string v1, "tc"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v5, 0x64

    const/16 v6, 0x64

    invoke-static/range {v1 .. v6}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->h:I

    const-string v0, "mp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->k:I

    const-string v0, "sm"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/dynatrace/android/agent/util/Utility;->i(Ljava/lang/String;IZLjava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->b:Z

    new-instance p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p1, p0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    return-object p1
.end method

.method public final e(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;Lorg/json/JSONObject;)V
    .locals 8

    const-string p0, "maxBeaconSizeKb"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    const v2, 0x7fffffff

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    invoke-static {p3, p0, v1, v2, v0}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result p0

    iput p0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->a:I

    :cond_0
    const-string p0, "selfmonitoring"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0, p3, v3}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->b:Z

    :cond_1
    sget-object v0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    new-instance v0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;-><init>()V

    const-string v4, "maxSessionDurationMins"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x168

    invoke-static {p3, v4, v1, v2, v5}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    iput v4, v0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->a:I

    :cond_2
    const-string v4, "sessionTimeoutSec"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x1e

    const/16 v6, 0x258

    invoke-static {p3, v4, v5, v2, v6}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    iput v4, v0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->b:I

    :cond_3
    new-instance v4, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-direct {v4, v0}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;)V

    iput-object v4, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    const-string v0, "sendIntervalSec"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x78

    invoke-static {p3, v0, v1, v4, v4}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->d:I

    :cond_4
    const-string v0, "maxCachedCrashesCount"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-static {p3, v0, v5, v4, v5}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->e:I

    :cond_5
    const-string v0, "rageTapConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->e:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    new-instance v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;-><init>()V

    const-string v6, "tapDuration"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0, v6, v5, v2, v4}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v6

    iput v6, v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->a:I

    :cond_6
    const-string v6, "dispersionRadius"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0, v6, v5, v2, v4}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    iput v4, v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->b:I

    :cond_7
    const-string v4, "timespanDifference"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x12c

    invoke-static {v0, v4, v5, v2, v6}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    iput v4, v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->c:I

    :cond_8
    const-string v4, "minimumNumberOfTaps"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x3

    invoke-static {v0, v4, v6, v2, v6}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->d:I

    :cond_9
    new-instance v0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-direct {v0, v1}, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;)V

    iput-object v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    :cond_a
    const-string p1, "replayConfig"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "protocolVersion"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x7fff

    invoke-static {p1, p3, v3, v0, v3}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result p3

    iput p3, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->f:I

    :cond_b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {p1, p0, v5, v2, v5}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->f(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result p0

    iput p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->g:I

    :cond_c
    const-string p0, "pixelCopy"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-static {p0, p1, v5}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->h:Z

    :cond_d
    const-string p0, "colorMasking"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {p0, p1, v5}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->i:Z

    :cond_e
    const-string p0, "composeEnabled"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-static {p0, p1, v3}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->i(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;->j:Z

    :cond_f
    return-void
.end method
