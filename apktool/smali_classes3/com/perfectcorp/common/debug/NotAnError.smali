.class public Lcom/perfectcorp/common/debug/NotAnError;
.super Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Don\'t panic. This is a call stack for reference."

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/debug/NotAnError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
