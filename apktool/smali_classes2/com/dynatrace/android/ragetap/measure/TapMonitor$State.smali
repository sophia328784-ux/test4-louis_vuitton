.class final enum Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/ragetap/measure/TapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

.field public static final enum INVALID_TAP_STATE:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

.field public static final enum NO_TAP:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

.field public static final enum TAP_DOWN:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    const-string v1, "NO_TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->NO_TAP:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    new-instance v1, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    const-string v2, "TAP_DOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->TAP_DOWN:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    new-instance v2, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    const-string v3, "INVALID_TAP_STATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->INVALID_TAP_STATE:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    filled-new-array {v0, v1, v2}, [Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->$VALUES:[Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;
    .locals 1

    const-class v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->$VALUES:[Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    invoke-virtual {v0}, [Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    return-object v0
.end method
