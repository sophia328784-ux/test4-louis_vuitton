.class public Lcom/batch/android/a/f;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/batch/android/a/f;->b:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/RuntimeException;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a/f;->b:Ljava/lang/RuntimeException;

    return-object p0
.end method
