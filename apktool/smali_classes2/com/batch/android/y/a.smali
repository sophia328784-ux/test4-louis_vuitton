.class public Lcom/batch/android/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/t/b$c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y/a;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/batch/android/y/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/y/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/y/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/batch/android/y/a;->c:Lcom/batch/android/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/y/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/batch/android/y/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/batch/android/y/a;->c:Lcom/batch/android/json/JSONObject;

    if-eqz p0, :cond_2

    invoke-static {p0, p3}, Lcom/batch/android/r/a;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    const-string p0, "EVENT"

    return-object p0
.end method
