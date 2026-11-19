.class public final enum Lcom/dynatrace/android/agent/conf/DataCollectionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/conf/DataCollectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

.field public static final enum OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

.field public static final enum PERFORMANCE:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

.field public static final enum USER_BEHAVIOR:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;


# instance fields
.field private final javaScriptValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    new-instance v1, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const-string v2, "PERFORMANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->PERFORMANCE:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    new-instance v2, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const-string v3, "USER_BEHAVIOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    filled-new-array {v0, v1, v2}, [Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->$VALUES:[Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->javaScriptValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/DataCollectionLevel;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/conf/DataCollectionLevel;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->$VALUES:[Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->javaScriptValue:I

    return p0
.end method
