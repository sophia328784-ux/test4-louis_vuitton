.class public final enum Lcom/batch/android/BatchSMSSubscriptionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/BatchSMSSubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SUBSCRIBED:Lcom/batch/android/BatchSMSSubscriptionState;

.field public static final enum UNSUBSCRIBED:Lcom/batch/android/BatchSMSSubscriptionState;

.field private static final synthetic b:[Lcom/batch/android/BatchSMSSubscriptionState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/BatchSMSSubscriptionState;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchSMSSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchSMSSubscriptionState;->SUBSCRIBED:Lcom/batch/android/BatchSMSSubscriptionState;

    new-instance v0, Lcom/batch/android/BatchSMSSubscriptionState;

    const-string v1, "UNSUBSCRIBED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchSMSSubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchSMSSubscriptionState;->UNSUBSCRIBED:Lcom/batch/android/BatchSMSSubscriptionState;

    invoke-static {}, Lcom/batch/android/BatchSMSSubscriptionState;->a()[Lcom/batch/android/BatchSMSSubscriptionState;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchSMSSubscriptionState;->b:[Lcom/batch/android/BatchSMSSubscriptionState;

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

.method private static synthetic a()[Lcom/batch/android/BatchSMSSubscriptionState;
    .locals 2

    sget-object v0, Lcom/batch/android/BatchSMSSubscriptionState;->SUBSCRIBED:Lcom/batch/android/BatchSMSSubscriptionState;

    sget-object v1, Lcom/batch/android/BatchSMSSubscriptionState;->UNSUBSCRIBED:Lcom/batch/android/BatchSMSSubscriptionState;

    filled-new-array {v0, v1}, [Lcom/batch/android/BatchSMSSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/BatchSMSSubscriptionState;
    .locals 1

    const-class v0, Lcom/batch/android/BatchSMSSubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchSMSSubscriptionState;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/BatchSMSSubscriptionState;
    .locals 1

    sget-object v0, Lcom/batch/android/BatchSMSSubscriptionState;->b:[Lcom/batch/android/BatchSMSSubscriptionState;

    invoke-virtual {v0}, [Lcom/batch/android/BatchSMSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/BatchSMSSubscriptionState;

    return-object v0
.end method
