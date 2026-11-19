.class public final enum Lcom/batch/android/f0/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/f0/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/batch/android/f0/d;

.field public static final enum d:Lcom/batch/android/f0/d;

.field public static final enum e:Lcom/batch/android/f0/d;

.field public static final enum f:Lcom/batch/android/f0/d;

.field private static final synthetic g:[Lcom/batch/android/f0/d;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/f0/d;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/f0/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    new-instance v0, Lcom/batch/android/f0/d;

    const-string v1, "SERVER_FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/f0/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    new-instance v0, Lcom/batch/android/f0/d;

    const-string v1, "INVALID_RESPONSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/f0/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/f0/d;->e:Lcom/batch/android/f0/d;

    new-instance v0, Lcom/batch/android/f0/d;

    const-string v1, "CLIENT_NETWORK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/f0/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    invoke-static {}, Lcom/batch/android/f0/d;->a()[Lcom/batch/android/f0/d;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f0/d;->g:[Lcom/batch/android/f0/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/batch/android/f0/d;->b:I

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/f0/d;
    .locals 4

    sget-object v0, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    sget-object v1, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    sget-object v2, Lcom/batch/android/f0/d;->e:Lcom/batch/android/f0/d;

    sget-object v3, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/f0/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/f0/d;
    .locals 1

    const-class v0, Lcom/batch/android/f0/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/f0/d;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/f0/d;
    .locals 1

    sget-object v0, Lcom/batch/android/f0/d;->g:[Lcom/batch/android/f0/d;

    invoke-virtual {v0}, [Lcom/batch/android/f0/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/f0/d;

    return-object v0
.end method
