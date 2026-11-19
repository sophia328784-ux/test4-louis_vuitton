.class public Lcom/batch/android/u/c;
.super Lcom/batch/android/u/b;
.source "SourceFile"


# instance fields
.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/g;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/u/b;-><init>(Lcom/batch/android/v0/g;Lcom/batch/android/json/JSONObject;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/batch/android/u/c;->c:Landroid/os/Handler;

    return-void
.end method

.method public static b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/c;
    .locals 2

    .line 22
    new-instance v0, Lcom/batch/android/u/c;

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/batch/android/u/c;-><init>(Lcom/batch/android/v0/g;Lcom/batch/android/json/JSONObject;)V

    return-object v0
.end method

.method private synthetic b(Lcom/batch/android/t/b;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "LocalCampaigns"

    const-string p1, "Application is in background, skipping message display"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/batch/android/u/b;->a(Lcom/batch/android/t/b;)Z

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/u/c;Lcom/batch/android/t/b;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/batch/android/u/c;->b(Lcom/batch/android/t/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/batch/android/t/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling In-App message with delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/batch/android/t/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalCampaigns"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/batch/android/u/c;->c:Landroid/os/Handler;

    new-instance v1, Lw21;

    const/16 v2, 0x19

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget p0, p1, Lcom/batch/android/t/b;->o:I

    int-to-long p0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/batch/android/u/b;->a(Lcom/batch/android/t/b;)Z

    move-result p0

    return p0
.end method
