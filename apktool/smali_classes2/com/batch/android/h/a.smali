.class public Lcom/batch/android/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/h/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/batch/android/h/d;

.field protected b:Lcom/batch/android/h/a$a;

.field protected c:Z


# direct methods
.method public constructor <init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/h/a;->c:Z

    iput-object p1, p0, Lcom/batch/android/h/a;->a:Lcom/batch/android/h/d;

    iput-object p2, p0, Lcom/batch/android/h/a;->b:Lcom/batch/android/h/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/batch/android/h/a;->a:Lcom/batch/android/h/d;

    .line 13
    iput-object p2, p0, Lcom/batch/android/h/a;->b:Lcom/batch/android/h/a$a;

    .line 14
    iput-boolean p3, p0, Lcom/batch/android/h/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/h/d;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/h/a;->a:Lcom/batch/android/h/d;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/batch/android/h/a;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/h/a;->b:Lcom/batch/android/h/a$a;

    invoke-interface {p0}, Lcom/batch/android/h/a$a;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/h/a;->c:Z

    return p0
.end method
