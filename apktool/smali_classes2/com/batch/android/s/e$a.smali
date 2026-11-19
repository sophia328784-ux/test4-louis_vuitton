.class public Lcom/batch/android/s/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/s/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/batch/android/s/e$a;->c:I

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lcom/batch/android/s/e$a;->d:J

    .line 18
    iput-object p1, p0, Lcom/batch/android/s/e$a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/s/e$a;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batch/android/s/e$a;->d:J

    iput-object p1, p0, Lcom/batch/android/s/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/s/e$a;->b:Ljava/lang/String;

    return-void
.end method
