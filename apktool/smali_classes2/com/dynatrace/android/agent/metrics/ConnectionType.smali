.class public final enum Lcom/dynatrace/android/agent/metrics/ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/metrics/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/metrics/ConnectionType;

.field public static final enum LAN:Lcom/dynatrace/android/agent/metrics/ConnectionType;

.field public static final enum MOBILE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

.field public static final enum OFFLINE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

.field public static final enum OTHER:Lcom/dynatrace/android/agent/metrics/ConnectionType;

.field public static final enum WIFI:Lcom/dynatrace/android/agent/metrics/ConnectionType;


# instance fields
.field private protocolValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    const/4 v1, 0x0

    const-string v2, "o"

    const-string v3, "OFFLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynatrace/android/agent/metrics/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/metrics/ConnectionType;->OFFLINE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    new-instance v1, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    const/4 v2, 0x1

    const-string v3, "m"

    const-string v4, "MOBILE"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynatrace/android/agent/metrics/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynatrace/android/agent/metrics/ConnectionType;->MOBILE:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    new-instance v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    const/4 v3, 0x2

    const-string v4, "w"

    const-string v5, "WIFI"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynatrace/android/agent/metrics/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynatrace/android/agent/metrics/ConnectionType;->WIFI:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    new-instance v3, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    const/4 v4, 0x3

    const-string v5, "l"

    const-string v6, "LAN"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynatrace/android/agent/metrics/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynatrace/android/agent/metrics/ConnectionType;->LAN:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    new-instance v4, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    const/4 v5, 0x4

    const-string v6, ""

    const-string v7, "OTHER"

    invoke-direct {v4, v7, v5, v6}, Lcom/dynatrace/android/agent/metrics/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynatrace/android/agent/metrics/ConnectionType;->OTHER:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dynatrace/android/agent/metrics/ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/metrics/ConnectionType;->$VALUES:[Lcom/dynatrace/android/agent/metrics/ConnectionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynatrace/android/agent/metrics/ConnectionType;->protocolValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/metrics/ConnectionType;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/metrics/ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/metrics/ConnectionType;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/metrics/ConnectionType;->$VALUES:[Lcom/dynatrace/android/agent/metrics/ConnectionType;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/metrics/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/metrics/ConnectionType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/metrics/ConnectionType;->protocolValue:Ljava/lang/String;

    return-object p0
.end method
