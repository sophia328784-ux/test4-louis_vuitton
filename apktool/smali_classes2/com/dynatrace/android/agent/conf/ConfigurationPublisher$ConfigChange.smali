.class public final enum Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;",
        "",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "IS_3RDGEN_ENABLED",
        "IS_TOUCHES_ENABLED",
        "TRACESTATE_KEY_PREFIX",
        "INSTANCE_ID",
        "SESSION_ID",
        "APPLICATION_ID",
        "DATA_COLLECTION_LEVEL",
        "CRASH_REPORTING",
        "TRAFFIC_CONTROL",
        "AGENT_STATUS",
        "TRACE_CONTEXT_ENABLED",
        "SESSION_REPLAY_ENABLED",
        "REPLAY_METRICS_ENABLED",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum AGENT_STATUS:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum APPLICATION_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum CRASH_REPORTING:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum DATA_COLLECTION_LEVEL:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum INSTANCE_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum IS_3RDGEN_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum IS_TOUCHES_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum REPLAY_METRICS_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum SESSION_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum SESSION_REPLAY_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum TRACESTATE_KEY_PREFIX:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum TRACE_CONTEXT_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

.field public static final enum TRAFFIC_CONTROL:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v1, 0x0

    const-string v2, "3rd_gen_enabled"

    const-string v3, "IS_3RDGEN_ENABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->IS_3RDGEN_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v2, 0x1

    const-string v3, "touch_interaction_enabled"

    const-string v4, "IS_TOUCHES_ENABLED"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->IS_TOUCHES_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v2, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v3, 0x2

    const-string v4, "tracestate_key_prefix"

    const-string v5, "TRACESTATE_KEY_PREFIX"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->TRACESTATE_KEY_PREFIX:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v3, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v4, 0x3

    const-string v5, "instance_id"

    const-string v6, "INSTANCE_ID"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->INSTANCE_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v4, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v5, 0x4

    const-string v6, "session_id"

    const-string v7, "SESSION_ID"

    invoke-direct {v4, v7, v5, v6}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->SESSION_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v5, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v6, 0x5

    const-string v7, "application_id"

    const-string v8, "APPLICATION_ID"

    invoke-direct {v5, v8, v6, v7}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->APPLICATION_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v6, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v7, 0x6

    const-string v8, "data_collection_level"

    const-string v9, "DATA_COLLECTION_LEVEL"

    invoke-direct {v6, v9, v7, v8}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->DATA_COLLECTION_LEVEL:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v7, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/4 v8, 0x7

    const-string v9, "crash_reporting"

    const-string v10, "CRASH_REPORTING"

    invoke-direct {v7, v10, v8, v9}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->CRASH_REPORTING:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v8, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/16 v9, 0x8

    const-string v10, "traffic_control"

    const-string v11, "TRAFFIC_CONTROL"

    invoke-direct {v8, v11, v9, v10}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->TRAFFIC_CONTROL:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v9, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/16 v10, 0x9

    const-string v11, "agent_status"

    const-string v12, "AGENT_STATUS"

    invoke-direct {v9, v12, v10, v11}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->AGENT_STATUS:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v10, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/16 v11, 0xa

    const-string v12, "trace_context_enabled"

    const-string v13, "TRACE_CONTEXT_ENABLED"

    invoke-direct {v10, v13, v11, v12}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->TRACE_CONTEXT_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v11, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/16 v12, 0xb

    const-string v13, "session_replay_enabled"

    const-string v14, "SESSION_REPLAY_ENABLED"

    invoke-direct {v11, v14, v12, v13}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->SESSION_REPLAY_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    new-instance v12, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    const/16 v13, 0xc

    const-string v14, "replay_metrics_enabled"

    const-string v15, "REPLAY_METRICS_ENABLED"

    invoke-direct {v12, v15, v13, v14}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->REPLAY_METRICS_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    filled-new-array/range {v0 .. v12}, [Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->$VALUES:[Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->$VALUES:[Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->id:Ljava/lang/String;

    return-object p0
.end method
