.class public Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;


# instance fields
.field public maskImageEnabled:Z

.field public maskInputEnabled:Z

.field public maskPageBlacklist:Ljava/lang/String;

.field public maskTextEnabled:Z

.field public maskViewIdBlacklist:Ljava/lang/String;

.field public replay:I

.field public replayCacheSize:I

.field public replayThreshold:I

.field public replayUploadType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 124
    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayThreshold:I

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    const/16 v1, 0xa

    .line 126
    iput v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    .line 127
    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    .line 128
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    .line 129
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    .line 130
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IIIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    .line 135
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    .line 136
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    .line 139
    iput p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayThreshold:I

    .line 140
    iput p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    .line 141
    iput p3, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    .line 142
    iput p4, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    .line 143
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    .line 144
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    .line 145
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    .line 146
    iput-object p8, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    .line 147
    iput-object p9, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->addMaskInfo()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayThreshold:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    :try_start_0
    const-string v1, "replayUploadType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->check(III)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    const-string v1, "replayCacheSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    const/16 v3, 0x400

    invoke-direct {p0, v1, v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->check(III)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    const-string v1, "replayQuality"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->check(III)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    const-string v1, "maskInputEnabled"

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    const-string v1, "maskImageEnabled"

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    const-string v1, "maskTextEnabled"

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    const-string v1, "maskViewIdBlacklist"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    const-string v1, "maskPageBlacklist"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->addMaskInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private addMaskInfo()V
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskConfiguredView(ZZZ)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskConfigurePageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->maskConfigureViewIdList(Ljava/lang/String;)V

    return-void
.end method

.method private check(III)I
    .locals 0

    if-lez p1, :cond_1

    if-le p1, p3, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->instance:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    if-nez v0, :cond_1

    const-class v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->instance:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->instance:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    return-object v0
.end method

.method public static initInstance(IIIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->instance:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    if-nez v0, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;-><init>(IIIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->instance:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    :cond_0
    return-void
.end method


# virtual methods
.method public getReplay()D
    .locals 2

    iget p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-wide v0, 0x3fc5c28f5c28f5c3L    # 0.17

    return-wide v0

    :cond_0
    const-wide v0, 0x3fd51eb851eb851fL    # 0.33

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    return-wide v0
.end method

.method public getReplayCacheSize()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    return p0
.end method

.method public getReplayQuality()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    return p0
.end method

.method public getReplayThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayThreshold:I

    return p0
.end method

.method public getReplayUploadType()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSSessionConfig{replayThreshold="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", replay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", replayUploadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", replayCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maskInputEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maskTextEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maskImageEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maskPageBlacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maskViewIdBlacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
