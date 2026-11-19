.class public final enum Lcom/batch/android/g1/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/g1/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/g1/a$a;

.field public static final enum c:Lcom/batch/android/g1/a$a;

.field public static final enum d:Lcom/batch/android/g1/a$a;

.field public static final enum e:Lcom/batch/android/g1/a$a;

.field public static final enum f:Lcom/batch/android/g1/a$a;

.field private static final synthetic g:[Lcom/batch/android/g1/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/g1/a$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g1/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g1/a$a;->b:Lcom/batch/android/g1/a$a;

    new-instance v0, Lcom/batch/android/g1/a$a;

    const-string v1, "BUMP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g1/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g1/a$a;->c:Lcom/batch/android/g1/a$a;

    new-instance v0, Lcom/batch/android/g1/a$a;

    const-string v1, "RECHECK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g1/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g1/a$a;->d:Lcom/batch/android/g1/a$a;

    new-instance v0, Lcom/batch/android/g1/a$a;

    const-string v1, "RESEND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g1/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g1/a$a;->e:Lcom/batch/android/g1/a$a;

    new-instance v0, Lcom/batch/android/g1/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g1/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g1/a$a;->f:Lcom/batch/android/g1/a$a;

    invoke-static {}, Lcom/batch/android/g1/a$a;->a()[Lcom/batch/android/g1/a$a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g1/a$a;->g:[Lcom/batch/android/g1/a$a;

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

.method private static synthetic a()[Lcom/batch/android/g1/a$a;
    .locals 5

    sget-object v0, Lcom/batch/android/g1/a$a;->b:Lcom/batch/android/g1/a$a;

    sget-object v1, Lcom/batch/android/g1/a$a;->c:Lcom/batch/android/g1/a$a;

    sget-object v2, Lcom/batch/android/g1/a$a;->d:Lcom/batch/android/g1/a$a;

    sget-object v3, Lcom/batch/android/g1/a$a;->e:Lcom/batch/android/g1/a$a;

    sget-object v4, Lcom/batch/android/g1/a$a;->f:Lcom/batch/android/g1/a$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/batch/android/g1/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/g1/a$a;
    .locals 1

    const-class v0, Lcom/batch/android/g1/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g1/a$a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/g1/a$a;
    .locals 1

    sget-object v0, Lcom/batch/android/g1/a$a;->g:[Lcom/batch/android/g1/a$a;

    invoke-virtual {v0}, [Lcom/batch/android/g1/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/g1/a$a;

    return-object v0
.end method
