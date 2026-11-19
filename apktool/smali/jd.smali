.class public final synthetic Ljd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j1/a;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Ljd;->b:Z

    iput-object p1, p0, Ljd;->c:Landroid/content/Context;

    iput-boolean p3, p0, Ljd;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 2

    iget-object v0, p0, Ljd;->c:Landroid/content/Context;

    iget-boolean v1, p0, Ljd;->d:Z

    iget-boolean p0, p0, Ljd;->b:Z

    invoke-static {p0, v0, v1, p1, p2}, Lcom/batch/android/Batch;->k(ZLandroid/content/Context;ZLcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p0

    return-object p0
.end method
