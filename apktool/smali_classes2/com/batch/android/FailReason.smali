.class public final enum Lcom/batch/android/FailReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/FailReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

.field public static final enum INVALID_API_KEY:Lcom/batch/android/FailReason;

.field public static final enum NETWORK_ERROR:Lcom/batch/android/FailReason;

.field public static final enum SDK_OPTED_OUT:Lcom/batch/android/FailReason;

.field public static final enum UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

.field private static final synthetic b:[Lcom/batch/android/FailReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "INVALID_API_KEY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "DEACTIVATED_API_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "UNEXPECTED_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "SDK_OPTED_OUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->SDK_OPTED_OUT:Lcom/batch/android/FailReason;

    invoke-static {}, Lcom/batch/android/FailReason;->a()[Lcom/batch/android/FailReason;

    move-result-object v0

    sput-object v0, Lcom/batch/android/FailReason;->b:[Lcom/batch/android/FailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/FailReason;
    .locals 5

    sget-object v0, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    sget-object v2, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    sget-object v3, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    sget-object v4, Lcom/batch/android/FailReason;->SDK_OPTED_OUT:Lcom/batch/android/FailReason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/batch/android/FailReason;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/FailReason;
    .locals 1

    const-class v0, Lcom/batch/android/FailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/FailReason;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/FailReason;
    .locals 1

    sget-object v0, Lcom/batch/android/FailReason;->b:[Lcom/batch/android/FailReason;

    invoke-virtual {v0}, [Lcom/batch/android/FailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/FailReason;

    return-object v0
.end method
