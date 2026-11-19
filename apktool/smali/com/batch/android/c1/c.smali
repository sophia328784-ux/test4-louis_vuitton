.class public Lcom/batch/android/c1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/c1/c;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/batch/android/c1/c;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/c1/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/batch/android/c1/c;->b:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c1/c;->a:Ljava/lang/String;

    return-object p0
.end method
