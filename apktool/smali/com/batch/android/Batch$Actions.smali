.class public final Lcom/batch/android/Batch$Actions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Actions"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDrawableAlias(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static register(Lcom/batch/android/UserAction;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/a;->a(Lcom/batch/android/UserAction;)V

    return-void
.end method

.method public static setDeeplinkInterceptor(Lcom/batch/android/BatchDeeplinkInterceptor;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/a;->a(Lcom/batch/android/BatchDeeplinkInterceptor;)V

    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/a;->b(Ljava/lang/String;)V

    return-void
.end method
