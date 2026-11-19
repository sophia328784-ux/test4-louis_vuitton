.class public Lcom/batch/android/x0/k;
.super Lcom/batch/android/x0/i;
.source "SourceFile"


# instance fields
.field private final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/x0/i;-><init>()V

    iput-wide p1, p0, Lcom/batch/android/x0/k;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/batch/android/x0/i;-><init>(Ljava/lang/String;)V

    .line 7
    iput-wide p2, p0, Lcom/batch/android/x0/k;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/x0/k;->c:J

    return-wide v0
.end method
