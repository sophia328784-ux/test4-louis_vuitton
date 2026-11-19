.class public final Lcom/batch/android/Batch$Messaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messaging"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/Batch$Messaging$LifecycleListener;,
        Lcom/batch/android/Batch$Messaging$InAppInterceptor;,
        Lcom/batch/android/Batch$Messaging$DisplayHint;,
        Lcom/batch/android/Batch$Messaging$DisplayHintProvider;,
        Lcom/batch/android/Batch$Messaging$a;
    }
.end annotation


# static fields
.field public static final GLOBAL_TAP_ACTION_INDEX:Ljava/lang/String; = "mepCtaIndex:-1"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPendingMessage()Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/g;->k()Z

    move-result v0

    return v0
.end method

.method public static isDoNotDisturbEnabled()Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/g;->l()Z

    move-result v0

    return v0
.end method

.method public static loadMessagingView(Landroid/content/Context;Lcom/batch/android/BatchMessage;)Lcom/batch/android/BatchMessagingView;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    invoke-static {v0}, Lcom/batch/android/i0/b;->f(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/f0/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/batch/android/BatchMessagingView;

    sget-object v3, Lcom/batch/android/BatchMessagingView$Kind;->View:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {v1, p0, p1, v0}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Lcom/batch/android/a;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/batch/android/BatchMessagingView;-><init>(Lcom/batch/android/BatchMessagingView$Kind;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v2, Lcom/batch/android/BatchMessagingView;

    sget-object v3, Lcom/batch/android/BatchMessagingView$Kind;->Fragment:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {v1, p0, p1, v0}, Lcom/batch/android/v0/g;->b(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/batch/android/BatchMessagingView;-><init>(Lcom/batch/android/BatchMessagingView$Kind;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/batch/android/i0/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    new-instance p0, Lcom/batch/android/BatchMessagingException;

    const-string p1, "Could not read base payload from message"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static popPendingMessage()Lcom/batch/android/BatchMessage;
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/g;->n()Lcom/batch/android/BatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public static setAutomaticMode(Z)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/g;->b(Z)V

    return-void
.end method

.method public static setDoNotDisturbEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/g;->c(Z)V

    return-void
.end method

.method public static setInAppInterceptor(Lcom/batch/android/Batch$Messaging$InAppInterceptor;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/Batch$Messaging$InAppInterceptor;)V

    return-void
.end method

.method public static setLifecycleListener(Lcom/batch/android/Batch$Messaging$LifecycleListener;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/Batch$Messaging$LifecycleListener;)V

    return-void
.end method

.method public static setShowForegroundLandings(Z)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/g;->d(Z)V

    return-void
.end method

.method public static setTypefaceOverride(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/g;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Z)V

    return-void

    :cond_0
    const-string p0, "message can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
