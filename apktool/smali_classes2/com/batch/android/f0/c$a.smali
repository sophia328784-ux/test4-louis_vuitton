.class public final enum Lcom/batch/android/f0/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/f0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/f0/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/f0/c$a;

.field public static final enum c:Lcom/batch/android/f0/c$a;

.field public static final enum d:Lcom/batch/android/f0/c$a;

.field public static final enum e:Lcom/batch/android/f0/c$a;

.field private static final synthetic f:[Lcom/batch/android/f0/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/f0/c$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f0/c$a;->b:Lcom/batch/android/f0/c$a;

    new-instance v0, Lcom/batch/android/f0/c$a;

    const-string v1, "LANDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f0/c$a;->c:Lcom/batch/android/f0/c$a;

    new-instance v0, Lcom/batch/android/f0/c$a;

    const-string v1, "LOCAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f0/c$a;->d:Lcom/batch/android/f0/c$a;

    new-instance v0, Lcom/batch/android/f0/c$a;

    const-string v1, "INBOX_LANDING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f0/c$a;->e:Lcom/batch/android/f0/c$a;

    invoke-static {}, Lcom/batch/android/f0/c$a;->a()[Lcom/batch/android/f0/c$a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f0/c$a;->f:[Lcom/batch/android/f0/c$a;

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

.method private static synthetic a()[Lcom/batch/android/f0/c$a;
    .locals 4

    sget-object v0, Lcom/batch/android/f0/c$a;->b:Lcom/batch/android/f0/c$a;

    sget-object v1, Lcom/batch/android/f0/c$a;->c:Lcom/batch/android/f0/c$a;

    sget-object v2, Lcom/batch/android/f0/c$a;->d:Lcom/batch/android/f0/c$a;

    sget-object v3, Lcom/batch/android/f0/c$a;->e:Lcom/batch/android/f0/c$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/f0/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/f0/c$a;
    .locals 1

    const-class v0, Lcom/batch/android/f0/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/f0/c$a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/f0/c$a;
    .locals 1

    sget-object v0, Lcom/batch/android/f0/c$a;->f:[Lcom/batch/android/f0/c$a;

    invoke-virtual {v0}, [Lcom/batch/android/f0/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/f0/c$a;

    return-object v0
.end method
