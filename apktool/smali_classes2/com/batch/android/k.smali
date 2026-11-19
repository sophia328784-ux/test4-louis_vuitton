.class public Lcom/batch/android/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/q/g;)Lcom/batch/android/BatchInboxNotificationContent;
    .locals 1

    new-instance v0, Lcom/batch/android/BatchInboxNotificationContent;

    invoke-direct {v0, p0}, Lcom/batch/android/BatchInboxNotificationContent;-><init>(Lcom/batch/android/q/g;)V

    return-object v0
.end method

.method public static a(Lcom/batch/android/BatchInboxNotificationContent;)Lcom/batch/android/q/g;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    return-object p0
.end method
