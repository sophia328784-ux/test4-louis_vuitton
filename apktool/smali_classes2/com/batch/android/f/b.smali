.class public final enum Lcom/batch/android/f/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/f/b;

.field public static final enum c:Lcom/batch/android/f/b;

.field private static final synthetic d:[Lcom/batch/android/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/f/b;

    const-string v1, "WEB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f/b;->b:Lcom/batch/android/f/b;

    new-instance v0, Lcom/batch/android/f/b;

    const-string v1, "METRIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f/b;->c:Lcom/batch/android/f/b;

    invoke-static {}, Lcom/batch/android/f/b;->a()[Lcom/batch/android/f/b;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/b;->d:[Lcom/batch/android/f/b;

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

.method private static synthetic a()[Lcom/batch/android/f/b;
    .locals 2

    .line 41
    sget-object v0, Lcom/batch/android/f/b;->b:Lcom/batch/android/f/b;

    sget-object v1, Lcom/batch/android/f/b;->c:Lcom/batch/android/f/b;

    filled-new-array {v0, v1}, [Lcom/batch/android/f/b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/f/b;
    .locals 1

    const-class v0, Lcom/batch/android/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/f/b;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/f/b;
    .locals 1

    sget-object v0, Lcom/batch/android/f/b;->d:[Lcom/batch/android/f/b;

    invoke-virtual {v0}, [Lcom/batch/android/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/f/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/batch/android/f/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "wsmetrics.%s/api-sdk"

    goto :goto_0

    :cond_0
    const-string p1, "Unexpected value: "

    invoke-static {p0, p1}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "ws.%s"

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "https://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
