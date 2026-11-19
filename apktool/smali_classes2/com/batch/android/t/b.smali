.class public Lcom/batch/android/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/t/b$a;,
        Lcom/batch/android/t/b$b;,
        Lcom/batch/android/t/b$c;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "LocalCampaign"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:I

.field public e:Lcom/batch/android/i/a;

.field public f:Lcom/batch/android/i/a;

.field public g:I

.field public h:Ljava/lang/Integer;

.field public i:Lcom/batch/android/t/b$a;

.field public j:Lcom/batch/android/json/JSONObject;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/t/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Lcom/batch/android/t/c;

.field public o:I

.field public p:Lcom/batch/android/json/JSONObject;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/t/b;->d:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/batch/android/t/b;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/batch/android/t/b;->k:Ljava/util/List;

    iput-boolean v0, p0, Lcom/batch/android/t/b;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/batch/android/t/b;->m:Ljava/lang/String;

    iput v0, p0, Lcom/batch/android/t/b;->o:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/t/b;->i:Lcom/batch/android/t/b$a;

    invoke-virtual {v0, p0}, Lcom/batch/android/t/b$a;->a(Lcom/batch/android/t/b;)Z

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/t/b;->j:Lcom/batch/android/json/JSONObject;

    const-string v0, "i"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "LocalCampaign"

    const-string v1, "Could not generate occurrence id in event data"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .locals 0

    iget p0, p0, Lcom/batch/android/t/b;->o:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
