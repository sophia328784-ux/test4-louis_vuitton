.class public final enum Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

.field public static final enum c:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

.field public static final enum d:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

.field public static final enum e:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

.field private static final synthetic f:[Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    new-instance v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    const-string v1, "SSL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->c:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    new-instance v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    const-string v1, "BAD_HTTP_STATUSCODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->d:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    new-instance v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->e:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    invoke-static {}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->a()[Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->f:[Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;
    .locals 4

    sget-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object v1, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->c:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object v2, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->d:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object v3, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->e:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;
    .locals 1

    const-class v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;
    .locals 1

    sget-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->f:[Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    invoke-virtual {v0}, [Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    return-object v0
.end method
