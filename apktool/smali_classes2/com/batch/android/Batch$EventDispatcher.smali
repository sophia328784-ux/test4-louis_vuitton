.class public final Lcom/batch/android/Batch$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/Batch$EventDispatcher$Payload;,
        Lcom/batch/android/Batch$EventDispatcher$Type;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDispatcher(Lcom/batch/android/BatchEventDispatcher;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/BatchEventDispatcher;)V

    return-void
.end method

.method public static removeDispatcher(Lcom/batch/android/BatchEventDispatcher;)Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/e;->b(Lcom/batch/android/BatchEventDispatcher;)Z

    move-result p0

    return p0
.end method
