.class public abstract Lcom/batch/android/g1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/batch/android/f1/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/f1/f;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/batch/android/g1/e;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/batch/android/g1/e;->b:Lcom/batch/android/f1/f;

    return-void

    :cond_0
    const-string p0, "queryType==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "queryID==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/batch/android/f1/f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/e;->b:Lcom/batch/android/f1/f;

    return-object p0
.end method
