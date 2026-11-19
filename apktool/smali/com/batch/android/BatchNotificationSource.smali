.class public final enum Lcom/batch/android/BatchNotificationSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/BatchNotificationSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAMPAIGN:Lcom/batch/android/BatchNotificationSource;

.field public static final enum TRANSACTIONAL:Lcom/batch/android/BatchNotificationSource;

.field public static final enum TRIGGER:Lcom/batch/android/BatchNotificationSource;

.field public static final enum UNKNOWN:Lcom/batch/android/BatchNotificationSource;

.field private static final synthetic b:[Lcom/batch/android/BatchNotificationSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/BatchNotificationSource;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchNotificationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchNotificationSource;->UNKNOWN:Lcom/batch/android/BatchNotificationSource;

    new-instance v0, Lcom/batch/android/BatchNotificationSource;

    const-string v1, "CAMPAIGN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchNotificationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchNotificationSource;->CAMPAIGN:Lcom/batch/android/BatchNotificationSource;

    new-instance v0, Lcom/batch/android/BatchNotificationSource;

    const-string v1, "TRANSACTIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchNotificationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchNotificationSource;->TRANSACTIONAL:Lcom/batch/android/BatchNotificationSource;

    new-instance v0, Lcom/batch/android/BatchNotificationSource;

    const-string v1, "TRIGGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchNotificationSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchNotificationSource;->TRIGGER:Lcom/batch/android/BatchNotificationSource;

    invoke-static {}, Lcom/batch/android/BatchNotificationSource;->a()[Lcom/batch/android/BatchNotificationSource;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchNotificationSource;->b:[Lcom/batch/android/BatchNotificationSource;

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

.method private static synthetic a()[Lcom/batch/android/BatchNotificationSource;
    .locals 4

    sget-object v0, Lcom/batch/android/BatchNotificationSource;->UNKNOWN:Lcom/batch/android/BatchNotificationSource;

    sget-object v1, Lcom/batch/android/BatchNotificationSource;->CAMPAIGN:Lcom/batch/android/BatchNotificationSource;

    sget-object v2, Lcom/batch/android/BatchNotificationSource;->TRANSACTIONAL:Lcom/batch/android/BatchNotificationSource;

    sget-object v3, Lcom/batch/android/BatchNotificationSource;->TRIGGER:Lcom/batch/android/BatchNotificationSource;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/BatchNotificationSource;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/BatchNotificationSource;
    .locals 1

    const-class v0, Lcom/batch/android/BatchNotificationSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchNotificationSource;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/BatchNotificationSource;
    .locals 1

    sget-object v0, Lcom/batch/android/BatchNotificationSource;->b:[Lcom/batch/android/BatchNotificationSource;

    invoke-virtual {v0}, [Lcom/batch/android/BatchNotificationSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/BatchNotificationSource;

    return-object v0
.end method
