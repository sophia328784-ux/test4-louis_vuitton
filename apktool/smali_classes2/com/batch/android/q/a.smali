.class public final enum Lcom/batch/android/q/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/q/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/batch/android/q/a;

.field public static final enum d:Lcom/batch/android/q/a;

.field private static final synthetic e:[Lcom/batch/android/q/a;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/q/a;

    const-string v1, "INSTALLATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/q/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/q/a;->c:Lcom/batch/android/q/a;

    new-instance v0, Lcom/batch/android/q/a;

    const-string v1, "USER_IDENTIFIER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/q/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/q/a;->d:Lcom/batch/android/q/a;

    invoke-static {}, Lcom/batch/android/q/a;->a()[Lcom/batch/android/q/a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/q/a;->e:[Lcom/batch/android/q/a;

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

    iput p3, p0, Lcom/batch/android/q/a;->b:I

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/q/a;
    .locals 2

    sget-object v0, Lcom/batch/android/q/a;->c:Lcom/batch/android/q/a;

    sget-object v1, Lcom/batch/android/q/a;->d:Lcom/batch/android/q/a;

    filled-new-array {v0, v1}, [Lcom/batch/android/q/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/q/a;
    .locals 1

    const-class v0, Lcom/batch/android/q/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/q/a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/q/a;
    .locals 1

    sget-object v0, Lcom/batch/android/q/a;->e:[Lcom/batch/android/q/a;

    invoke-virtual {v0}, [Lcom/batch/android/q/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/q/a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/batch/android/q/a;->b:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/batch/android/q/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "install"

    return-object p0

    :cond_0
    const-string p0, "custom"

    return-object p0
.end method
