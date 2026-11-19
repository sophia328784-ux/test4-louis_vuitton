.class public final enum Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "APPLICATION_CREATE_START",
        "APPLICATION_CREATE_END",
        "ACTIVITY_CREATE_START",
        "ACTIVITY_CREATE_END",
        "ACTIVITY_START_START",
        "ACTIVITY_START_END",
        "ACTIVITY_RESUME_START",
        "ACTIVITY_RESUME_END",
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

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum ACTIVITY_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum ACTIVITY_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum ACTIVITY_RESUME_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum ACTIVITY_RESUME_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum ACTIVITY_START_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum ACTIVITY_START_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum APPLICATION_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public static final enum APPLICATION_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v1, 0x0

    const-string v2, "android.application.on_create.start_time"

    const-string v3, "APPLICATION_CREATE_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->APPLICATION_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v2, 0x1

    const-string v3, "android.application.on_create.end_time"

    const-string v4, "APPLICATION_CREATE_END"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->APPLICATION_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v3, 0x2

    const-string v4, "android.activity.on_create.start_time"

    const-string v5, "ACTIVITY_CREATE_START"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v4, 0x3

    const-string v5, "android.activity.on_create.end_time"

    const-string v6, "ACTIVITY_CREATE_END"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v5, 0x4

    const-string v6, "android.activity.on_start.start_time"

    const-string v7, "ACTIVITY_START_START"

    invoke-direct {v4, v7, v5, v6}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_START_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v5, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v6, 0x5

    const-string v7, "android.activity.on_start.end_time"

    const-string v8, "ACTIVITY_START_END"

    invoke-direct {v5, v8, v6, v7}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_START_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v6, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v7, 0x6

    const-string v8, "android.activity.on_resume.start_time"

    const-string v9, "ACTIVITY_RESUME_START"

    invoke-direct {v6, v9, v7, v8}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_RESUME_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    new-instance v7, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    const/4 v8, 0x7

    const-string v9, "android.activity.on_resume.end_time"

    const-string v10, "ACTIVITY_RESUME_END"

    invoke-direct {v7, v10, v8, v9}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_RESUME_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    filled-new-array/range {v0 .. v7}, [Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->$VALUES:[Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->$VALUES:[Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->value:Ljava/lang/String;

    return-object p0
.end method
