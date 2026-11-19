.class final enum Lcom/dynatrace/android/agent/data/SessionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/data/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/data/SessionState;

.field public static final enum CREATED:Lcom/dynatrace/android/agent/data/SessionState;

.field public static final enum DISABLED:Lcom/dynatrace/android/agent/data/SessionState;

.field public static final enum ENABLED:Lcom/dynatrace/android/agent/data/SessionState;


# instance fields
.field private active:Z

.field private configurationApplied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionState;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/dynatrace/android/agent/data/SessionState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/dynatrace/android/agent/data/SessionState;->CREATED:Lcom/dynatrace/android/agent/data/SessionState;

    new-instance v1, Lcom/dynatrace/android/agent/data/SessionState;

    const-string v4, "ENABLED"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/dynatrace/android/agent/data/SessionState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/dynatrace/android/agent/data/SessionState;->ENABLED:Lcom/dynatrace/android/agent/data/SessionState;

    new-instance v4, Lcom/dynatrace/android/agent/data/SessionState;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/dynatrace/android/agent/data/SessionState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/dynatrace/android/agent/data/SessionState;->DISABLED:Lcom/dynatrace/android/agent/data/SessionState;

    filled-new-array {v0, v1, v4}, [Lcom/dynatrace/android/agent/data/SessionState;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/data/SessionState;->$VALUES:[Lcom/dynatrace/android/agent/data/SessionState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/dynatrace/android/agent/data/SessionState;->active:Z

    iput-boolean p4, p0, Lcom/dynatrace/android/agent/data/SessionState;->configurationApplied:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/data/SessionState;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/data/SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/data/SessionState;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/data/SessionState;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/data/SessionState;->$VALUES:[Lcom/dynatrace/android/agent/data/SessionState;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/data/SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/data/SessionState;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/data/SessionState;->active:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/data/SessionState;->configurationApplied:Z

    return p0
.end method
