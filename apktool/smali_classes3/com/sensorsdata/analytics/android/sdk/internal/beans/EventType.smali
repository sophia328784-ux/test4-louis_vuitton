.class public final enum Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum ALL:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum DEFAULT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum ITEM_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum ITEM_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_APPEND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_INCREMENT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_SET_ONCE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_UNSET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;


# instance fields
.field private eventType:Ljava/lang/String;

.field private profile:Z

.field private track:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "TRACK"

    const/4 v2, 0x0

    const-string v3, "track"

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "TRACK_SIGNUP"

    const/4 v3, 0x1

    const-string v4, "track_signup"

    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "TRACK_ID_BIND"

    const/4 v4, 0x2

    const-string v5, "track_id_bind"

    invoke-direct/range {v2 .. v7}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "TRACK_ID_UNBIND"

    const/4 v5, 0x3

    const-string v6, "track_id_unbind"

    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v9, 0x1

    const-string v5, "PROFILE_SET"

    const/4 v6, 0x4

    const-string v7, "profile_set"

    invoke-direct/range {v4 .. v9}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v4, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v6, "PROFILE_SET_ONCE"

    const/4 v7, 0x5

    const-string v8, "profile_set_once"

    invoke-direct/range {v5 .. v10}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_SET_ONCE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v7, "PROFILE_UNSET"

    const/4 v8, 0x6

    const-string v9, "profile_unset"

    invoke-direct/range {v6 .. v11}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_UNSET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v8, "PROFILE_INCREMENT"

    const/4 v9, 0x7

    const-string v10, "profile_increment"

    invoke-direct/range {v7 .. v12}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v7, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_INCREMENT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v9, "PROFILE_APPEND"

    const/16 v10, 0x8

    const-string v11, "profile_append"

    invoke-direct/range {v8 .. v13}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v8, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_APPEND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v10, "PROFILE_DELETE"

    const/16 v11, 0x9

    const-string v12, "profile_delete"

    invoke-direct/range {v9 .. v14}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v9, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v11, "ITEM_SET"

    const/16 v12, 0xa

    const-string v13, "item_set"

    invoke-direct/range {v10 .. v15}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v10, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ITEM_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v11, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/16 v16, 0x0

    const-string v12, "ITEM_DELETE"

    const/16 v13, 0xb

    const-string v14, "item_delete"

    invoke-direct/range {v11 .. v16}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v11, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ITEM_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v12, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/16 v17, 0x0

    const-string v13, "DEFAULT"

    const/16 v14, 0xc

    const-string v15, "default"

    invoke-direct/range {v12 .. v17}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v12, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    new-instance v13, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const/16 v18, 0x0

    const-string v14, "ALL"

    const/16 v15, 0xd

    const-string v16, "all"

    invoke-direct/range {v13 .. v18}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v13, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ALL:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    filled-new-array/range {v0 .. v13}, [Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->eventType:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->track:Z

    iput-boolean p5, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->profile:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .locals 1

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    return-object p0
.end method

.method public static values()[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .locals 1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v0}, [Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    return-object v0
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public isProfile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->profile:Z

    return p0
.end method

.method public isTrack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->track:Z

    return p0
.end method
