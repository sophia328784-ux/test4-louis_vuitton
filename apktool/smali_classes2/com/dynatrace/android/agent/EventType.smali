.class public final enum Lcom/dynatrace/android/agent/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/EventType;

.field public static final enum ACTION_AUTO:Lcom/dynatrace/android/agent/EventType;

.field public static final enum ACTION_AUTO_LOADING_APP:Lcom/dynatrace/android/agent/EventType;

.field public static final enum ACTION_MANUAL:Lcom/dynatrace/android/agent/EventType;

.field public static final enum APP_START:Lcom/dynatrace/android/agent/EventType;

.field public static final enum CRASH:Lcom/dynatrace/android/agent/EventType;

.field public static final enum DISPLAY:Lcom/dynatrace/android/agent/EventType;

.field public static final enum ERROR_EXCEPTION:Lcom/dynatrace/android/agent/EventType;

.field public static final enum ERROR_INT:Lcom/dynatrace/android/agent/EventType;

.field public static final enum EVENT_API:Lcom/dynatrace/android/agent/EventType;

.field public static final enum EVENT_BIZ:Lcom/dynatrace/android/agent/EventType;

.field public static final enum IDENTIFY_USER:Lcom/dynatrace/android/agent/EventType;

.field public static final enum NAMED_EVENT:Lcom/dynatrace/android/agent/EventType;

.field public static final enum PLACEHOLDER:Lcom/dynatrace/android/agent/EventType;

.field public static final enum RAGE_TAP:Lcom/dynatrace/android/agent/EventType;

.field public static final enum REDISPLAY:Lcom/dynatrace/android/agent/EventType;

.field public static final enum SELF_MONITORING_EVENT:Lcom/dynatrace/android/agent/EventType;

.field public static final enum VALUE_DOUBLE:Lcom/dynatrace/android/agent/EventType;

.field public static final enum VALUE_INT64:Lcom/dynatrace/android/agent/EventType;

.field public static final enum VALUE_STRING:Lcom/dynatrace/android/agent/EventType;

.field public static final enum VISIT_END:Lcom/dynatrace/android/agent/EventType;

.field public static final enum WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;


# instance fields
.field private dataCollectionLevel:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

.field private protocolId:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v1, Lcom/dynatrace/android/agent/EventType;

    sget-object v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->PERFORMANCE:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const-string v2, "ACTION_MANUAL"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v1, Lcom/dynatrace/android/agent/EventType;->ACTION_MANUAL:Lcom/dynatrace/android/agent/EventType;

    new-instance v2, Lcom/dynatrace/android/agent/EventType;

    const-string v3, "ACTION_AUTO"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v2, Lcom/dynatrace/android/agent/EventType;->ACTION_AUTO:Lcom/dynatrace/android/agent/EventType;

    new-instance v3, Lcom/dynatrace/android/agent/EventType;

    sget-object v4, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const-string v6, "ACTION_AUTO_LOADING_APP"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v5, v4}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v3, Lcom/dynatrace/android/agent/EventType;->ACTION_AUTO_LOADING_APP:Lcom/dynatrace/android/agent/EventType;

    new-instance v6, Lcom/dynatrace/android/agent/EventType;

    sget-object v7, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const-string v8, "NAMED_EVENT"

    const/4 v9, 0x3

    const/16 v10, 0xa

    invoke-direct {v6, v8, v9, v10, v7}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v6, Lcom/dynatrace/android/agent/EventType;->NAMED_EVENT:Lcom/dynatrace/android/agent/EventType;

    new-instance v8, Lcom/dynatrace/android/agent/EventType;

    const-string v9, "VALUE_STRING"

    const/4 v11, 0x4

    const/16 v12, 0xb

    invoke-direct {v8, v9, v11, v12, v7}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v8, Lcom/dynatrace/android/agent/EventType;->VALUE_STRING:Lcom/dynatrace/android/agent/EventType;

    move-object v9, v6

    new-instance v6, Lcom/dynatrace/android/agent/EventType;

    const-string v11, "VALUE_INT64"

    const/4 v13, 0x5

    const/16 v14, 0xc

    invoke-direct {v6, v11, v13, v14, v7}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v6, Lcom/dynatrace/android/agent/EventType;->VALUE_INT64:Lcom/dynatrace/android/agent/EventType;

    new-instance v11, Lcom/dynatrace/android/agent/EventType;

    const-string v13, "VALUE_DOUBLE"

    const/16 v15, 0xd

    invoke-direct {v11, v13, v5, v15, v7}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v11, Lcom/dynatrace/android/agent/EventType;->VALUE_DOUBLE:Lcom/dynatrace/android/agent/EventType;

    move-object v5, v8

    new-instance v8, Lcom/dynatrace/android/agent/EventType;

    const-string v13, "VISIT_END"

    const/4 v15, 0x7

    const/16 v14, 0x13

    invoke-direct {v8, v13, v15, v14, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v8, Lcom/dynatrace/android/agent/EventType;->VISIT_END:Lcom/dynatrace/android/agent/EventType;

    move-object v13, v9

    new-instance v9, Lcom/dynatrace/android/agent/EventType;

    const-string v15, "APP_START"

    const/16 v14, 0x8

    const/16 v12, 0x14

    invoke-direct {v9, v15, v14, v12, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v9, Lcom/dynatrace/android/agent/EventType;->APP_START:Lcom/dynatrace/android/agent/EventType;

    new-instance v14, Lcom/dynatrace/android/agent/EventType;

    const/16 v15, 0x9

    const/16 v12, 0x15

    const-string v10, "DISPLAY"

    invoke-direct {v14, v10, v15, v12, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v14, Lcom/dynatrace/android/agent/EventType;->DISPLAY:Lcom/dynatrace/android/agent/EventType;

    move-object v10, v11

    new-instance v11, Lcom/dynatrace/android/agent/EventType;

    const-string v12, "REDISPLAY"

    const/16 v15, 0x16

    move-object/from16 v22, v1

    const/16 v1, 0xa

    invoke-direct {v11, v12, v1, v15, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v11, Lcom/dynatrace/android/agent/EventType;->REDISPLAY:Lcom/dynatrace/android/agent/EventType;

    new-instance v12, Lcom/dynatrace/android/agent/EventType;

    const-string v1, "WEB_REQUEST"

    const/16 v15, 0x1e

    move-object/from16 v21, v2

    const/16 v2, 0xb

    invoke-direct {v12, v1, v2, v15, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v12, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    move-object v1, v13

    new-instance v13, Lcom/dynatrace/android/agent/EventType;

    const-string v2, "ERROR_INT"

    const/16 v15, 0x28

    move-object/from16 v19, v1

    const/16 v1, 0xc

    invoke-direct {v13, v2, v1, v15, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v13, Lcom/dynatrace/android/agent/EventType;->ERROR_INT:Lcom/dynatrace/android/agent/EventType;

    move-object v1, v10

    move-object v10, v14

    new-instance v14, Lcom/dynatrace/android/agent/EventType;

    const-string v2, "ERROR_EXCEPTION"

    const/16 v15, 0x2a

    move-object/from16 v17, v1

    const/16 v1, 0xd

    invoke-direct {v14, v2, v1, v15, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v14, Lcom/dynatrace/android/agent/EventType;->ERROR_EXCEPTION:Lcom/dynatrace/android/agent/EventType;

    new-instance v15, Lcom/dynatrace/android/agent/EventType;

    const/16 v1, 0xe

    const/16 v2, 0x32

    move-object/from16 v16, v3

    const-string v3, "CRASH"

    invoke-direct {v15, v3, v1, v2, v4}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v15, Lcom/dynatrace/android/agent/EventType;->CRASH:Lcom/dynatrace/android/agent/EventType;

    new-instance v1, Lcom/dynatrace/android/agent/EventType;

    const/16 v2, 0xf

    const/16 v3, 0x3c

    move-object/from16 v23, v5

    const-string v5, "IDENTIFY_USER"

    invoke-direct {v1, v5, v2, v3, v7}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v1, Lcom/dynatrace/android/agent/EventType;->IDENTIFY_USER:Lcom/dynatrace/android/agent/EventType;

    new-instance v2, Lcom/dynatrace/android/agent/EventType;

    const/16 v3, 0x10

    const/16 v5, 0x5a

    move-object/from16 v24, v1

    const-string v1, "SELF_MONITORING_EVENT"

    invoke-direct {v2, v1, v3, v5, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v2, Lcom/dynatrace/android/agent/EventType;->SELF_MONITORING_EVENT:Lcom/dynatrace/android/agent/EventType;

    new-instance v1, Lcom/dynatrace/android/agent/EventType;

    const/16 v3, 0x11

    const/16 v5, 0x61

    move-object/from16 v25, v2

    const-string v2, "RAGE_TAP"

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v1, Lcom/dynatrace/android/agent/EventType;->RAGE_TAP:Lcom/dynatrace/android/agent/EventType;

    new-instance v2, Lcom/dynatrace/android/agent/EventType;

    const-string v3, "EVENT_API"

    const/16 v5, 0x12

    move-object/from16 v26, v1

    const/16 v1, 0x62

    invoke-direct {v2, v3, v5, v1, v0}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v2, Lcom/dynatrace/android/agent/EventType;->EVENT_API:Lcom/dynatrace/android/agent/EventType;

    new-instance v0, Lcom/dynatrace/android/agent/EventType;

    const-string v3, "EVENT_BIZ"

    const/16 v5, 0x13

    invoke-direct {v0, v3, v5, v1, v4}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v0, Lcom/dynatrace/android/agent/EventType;->EVENT_BIZ:Lcom/dynatrace/android/agent/EventType;

    new-instance v1, Lcom/dynatrace/android/agent/EventType;

    const-string v3, "PLACEHOLDER"

    const/4 v4, -0x1

    const/16 v5, 0x14

    invoke-direct {v1, v3, v5, v4, v7}, Lcom/dynatrace/android/agent/EventType;-><init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    sput-object v1, Lcom/dynatrace/android/agent/EventType;->PLACEHOLDER:Lcom/dynatrace/android/agent/EventType;

    move-object/from16 v20, v0

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move-object/from16 v18, v26

    move-object/from16 v19, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v22

    filled-new-array/range {v1 .. v21}, [Lcom/dynatrace/android/agent/EventType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/EventType;->$VALUES:[Lcom/dynatrace/android/agent/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/dynatrace/android/agent/conf/DataCollectionLevel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dynatrace/android/agent/EventType;->protocolId:I

    iput-object p4, p0, Lcom/dynatrace/android/agent/EventType;->dataCollectionLevel:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/EventType;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/EventType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/EventType;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/EventType;->$VALUES:[Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/EventType;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/conf/DataCollectionLevel;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/EventType;->dataCollectionLevel:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/dynatrace/android/agent/EventType;->protocolId:I

    return p0
.end method
