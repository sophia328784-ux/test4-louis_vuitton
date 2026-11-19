.class public Lcom/batch/android/Batch$Messaging$DisplayHint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch$Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayHint"
.end annotation


# instance fields
.field a:Lcom/batch/android/Batch$Messaging$a;

.field b:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/batch/android/Batch$Messaging$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/batch/android/Batch$Messaging$DisplayHint;->a:Lcom/batch/android/Batch$Messaging$a;

    iput-object p1, p0, Lcom/batch/android/Batch$Messaging$DisplayHint;->b:Landroid/view/View;

    return-void
.end method

.method public static embed(Landroid/widget/FrameLayout;)Lcom/batch/android/Batch$Messaging$DisplayHint;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/Batch$Messaging$DisplayHint;

    sget-object v1, Lcom/batch/android/Batch$Messaging$a;->c:Lcom/batch/android/Batch$Messaging$a;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/Batch$Messaging$DisplayHint;-><init>(Landroid/view/View;Lcom/batch/android/Batch$Messaging$a;)V

    return-object v0

    :cond_0
    const-string p0, "layout cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static findUsingView(Landroid/view/View;)Lcom/batch/android/Batch$Messaging$DisplayHint;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/Batch$Messaging$DisplayHint;

    sget-object v1, Lcom/batch/android/Batch$Messaging$a;->b:Lcom/batch/android/Batch$Messaging$a;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/Batch$Messaging$DisplayHint;-><init>(Landroid/view/View;Lcom/batch/android/Batch$Messaging$a;)V

    return-object v0

    :cond_0
    const-string p0, "view cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
