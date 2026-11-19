.class public final Lcom/batch/android/Batch$Inbox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Inbox"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFetcher(Landroid/content/Context;)Lcom/batch/android/BatchInboxFetcher;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/g;

    invoke-direct {v0, p0}, Lcom/batch/android/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/batch/android/g;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/batch/android/BatchInboxFetcher;

    invoke-static {p0, v0}, Lcom/batch/android/n/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/q/f;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/BatchInboxFetcher;-><init>(Lcom/batch/android/q/f;)V

    return-object v1

    :cond_0
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFetcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchInboxFetcher;
    .locals 1

    if-eqz p0, :cond_0

    .line 28
    new-instance v0, Lcom/batch/android/BatchInboxFetcher;

    invoke-static {p0, p1, p2}, Lcom/batch/android/n/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/q/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/batch/android/BatchInboxFetcher;-><init>(Lcom/batch/android/q/f;)V

    return-object v0

    .line 29
    :cond_0
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
