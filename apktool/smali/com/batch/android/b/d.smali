.class public Lcom/batch/android/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field private static final a:Ljava/lang/String; = "LocalCampaignsRefreshAction"

.field public static b:Ljava/lang/String; = "batch.refresh_lc"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 0

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;)Z

    return-void

    :cond_0
    const-string p0, "LocalCampaignsRefreshAction"

    const-string p1, "Tried to perform a Local Campaigns Refresh action, but was unable to get a RuntimeManager instance."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
