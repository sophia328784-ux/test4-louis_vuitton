.class public final enum Lcom/batch/android/e/q0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/q0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/e/q0;

.field public static final enum c:Lcom/batch/android/e/q0;

.field public static final enum d:Lcom/batch/android/e/q0;

.field public static final enum e:Lcom/batch/android/e/q0;

.field public static final enum f:Lcom/batch/android/e/q0;

.field private static final synthetic g:[Lcom/batch/android/e/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/e/q0;

    const-string v1, "PARSING_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/q0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/q0;->b:Lcom/batch/android/e/q0;

    new-instance v0, Lcom/batch/android/e/q0;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/q0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/q0;->c:Lcom/batch/android/e/q0;

    new-instance v0, Lcom/batch/android/e/q0;

    const-string v1, "NETWORK_TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/q0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/q0;->d:Lcom/batch/android/e/q0;

    new-instance v0, Lcom/batch/android/e/q0;

    const-string v1, "SSL_HANDSHAKE_FAILURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/q0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/q0;->e:Lcom/batch/android/e/q0;

    new-instance v0, Lcom/batch/android/e/q0;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/q0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/q0;->f:Lcom/batch/android/e/q0;

    invoke-static {}, Lcom/batch/android/e/q0;->a()[Lcom/batch/android/e/q0;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/q0;->g:[Lcom/batch/android/e/q0;

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

.method private static synthetic a()[Lcom/batch/android/e/q0;
    .locals 5

    sget-object v0, Lcom/batch/android/e/q0;->b:Lcom/batch/android/e/q0;

    sget-object v1, Lcom/batch/android/e/q0;->c:Lcom/batch/android/e/q0;

    sget-object v2, Lcom/batch/android/e/q0;->d:Lcom/batch/android/e/q0;

    sget-object v3, Lcom/batch/android/e/q0;->e:Lcom/batch/android/e/q0;

    sget-object v4, Lcom/batch/android/e/q0;->f:Lcom/batch/android/e/q0;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/batch/android/e/q0;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/q0;
    .locals 1

    const-class v0, Lcom/batch/android/e/q0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/q0;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/q0;
    .locals 1

    sget-object v0, Lcom/batch/android/e/q0;->g:[Lcom/batch/android/e/q0;

    invoke-virtual {v0}, [Lcom/batch/android/e/q0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/q0;

    return-object v0
.end method
