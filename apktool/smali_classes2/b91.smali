.class public final synthetic Lb91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/c0$f;


# instance fields
.field public final synthetic a:Lcom/batch/android/v0/h;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/batch/android/BatchOptOutResultListener;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/batch/android/e/c0;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb91;->a:Lcom/batch/android/v0/h;

    iput-object p3, p0, Lb91;->b:Landroid/content/Context;

    iput-object p2, p0, Lb91;->c:Lcom/batch/android/BatchOptOutResultListener;

    iput-boolean p4, p0, Lb91;->d:Z

    iput-object p5, p0, Lb91;->e:Lcom/batch/android/e/c0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget-object v4, p0, Lb91;->e:Lcom/batch/android/e/c0;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    iget-object v0, p0, Lb91;->a:Lcom/batch/android/v0/h;

    iget-object v1, p0, Lb91;->b:Landroid/content/Context;

    iget-object v2, p0, Lb91;->c:Lcom/batch/android/BatchOptOutResultListener;

    iget-boolean v3, p0, Lb91;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/batch/android/v0/h;->l(Lcom/batch/android/v0/h;Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;ZLcom/batch/android/e/c0;Ljava/lang/Void;)V

    return-void
.end method
