.class public Lcom/dynatrace/android/agent/comm/InvalidResponseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final b:Lcom/dynatrace/android/agent/comm/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dynatrace/android/agent/comm/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/dynatrace/android/agent/comm/InvalidResponseException;->b:Lcom/dynatrace/android/agent/comm/HttpResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/dynatrace/android/agent/comm/HttpResponse;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput-object p3, p0, Lcom/dynatrace/android/agent/comm/InvalidResponseException;->b:Lcom/dynatrace/android/agent/comm/HttpResponse;

    return-void
.end method
