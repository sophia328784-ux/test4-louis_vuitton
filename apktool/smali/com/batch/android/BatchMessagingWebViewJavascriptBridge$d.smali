.class Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->b:I

    iput-object p2, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    iput p1, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->b:I

    .line 10
    iput-object p2, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->b:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->c:Ljava/lang/String;

    return-object p0
.end method
