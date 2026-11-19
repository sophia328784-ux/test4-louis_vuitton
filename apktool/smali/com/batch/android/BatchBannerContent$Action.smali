.class public Lcom/batch/android/BatchBannerContent$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchBannerContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/batch/android/f0/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchBannerContent$Action;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object p1, p1, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    iput-object v0, p0, Lcom/batch/android/BatchBannerContent$Action;->b:Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/batch/android/json/JSONObject;

    invoke-direct {p1}, Lcom/batch/android/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/batch/android/BatchBannerContent$Action;->b:Lcom/batch/android/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchBannerContent$Action;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getArgs()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchBannerContent$Action;->b:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method
