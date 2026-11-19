.class public Lcom/batch/android/x/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/x/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/x/a;->b:Lcom/batch/android/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b$c;)Z
    .locals 1

    instance-of v0, p1, Lcom/batch/android/y/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/batch/android/y/a;

    iget-object p0, p0, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/batch/android/y/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
