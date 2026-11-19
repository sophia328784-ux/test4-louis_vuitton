.class public final enum Lcom/batch/android/Batch$EventDispatcher$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/Batch$EventDispatcher$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MESSAGING_AUTO_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum MESSAGING_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum MESSAGING_CLOSE_ERROR:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum MESSAGING_SHOW:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum MESSAGING_WEBVIEW_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum NOTIFICATION_DISMISS:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum NOTIFICATION_DISPLAY:Lcom/batch/android/Batch$EventDispatcher$Type;

.field public static final enum NOTIFICATION_OPEN:Lcom/batch/android/Batch$EventDispatcher$Type;

.field private static final synthetic b:[Lcom/batch/android/Batch$EventDispatcher$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "NOTIFICATION_DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISPLAY:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "NOTIFICATION_DISMISS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISMISS:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "NOTIFICATION_OPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_OPEN:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "MESSAGING_SHOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_SHOW:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "MESSAGING_CLOSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "MESSAGING_AUTO_CLOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_AUTO_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "MESSAGING_CLOSE_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE_ERROR:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "MESSAGING_CLICK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    new-instance v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    const-string v1, "MESSAGING_WEBVIEW_CLICK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$EventDispatcher$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_WEBVIEW_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-static {}, Lcom/batch/android/Batch$EventDispatcher$Type;->a()[Lcom/batch/android/Batch$EventDispatcher$Type;

    move-result-object v0

    sput-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->b:[Lcom/batch/android/Batch$EventDispatcher$Type;

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

.method private static synthetic a()[Lcom/batch/android/Batch$EventDispatcher$Type;
    .locals 9

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISPLAY:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v1, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISMISS:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v2, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_OPEN:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v3, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_SHOW:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v4, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v5, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_AUTO_CLOSE:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v6, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLOSE_ERROR:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v7, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    sget-object v8, Lcom/batch/android/Batch$EventDispatcher$Type;->MESSAGING_WEBVIEW_CLICK:Lcom/batch/android/Batch$EventDispatcher$Type;

    filled-new-array/range {v0 .. v8}, [Lcom/batch/android/Batch$EventDispatcher$Type;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/Batch$EventDispatcher$Type;
    .locals 1

    const-class v0, Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/Batch$EventDispatcher$Type;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/Batch$EventDispatcher$Type;
    .locals 1

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->b:[Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-virtual {v0}, [Lcom/batch/android/Batch$EventDispatcher$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/Batch$EventDispatcher$Type;

    return-object v0
.end method


# virtual methods
.method public isMessagingEvent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/Batch$EventDispatcher$Type;->isNotificationEvent()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNotificationEvent()Z
    .locals 1

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_OPEN:Lcom/batch/android/Batch$EventDispatcher$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISPLAY:Lcom/batch/android/Batch$EventDispatcher$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISMISS:Lcom/batch/android/Batch$EventDispatcher$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
