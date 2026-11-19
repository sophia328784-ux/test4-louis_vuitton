.class public final enum Lcom/batch/android/f1/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/f1/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/f1/f;

.field public static final enum c:Lcom/batch/android/f1/f;

.field public static final enum d:Lcom/batch/android/f1/f;

.field public static final enum e:Lcom/batch/android/f1/f;

.field public static final enum f:Lcom/batch/android/f1/f;

.field public static final enum g:Lcom/batch/android/f1/f;

.field private static final synthetic h:[Lcom/batch/android/f1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/f1/f;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f1/f;->b:Lcom/batch/android/f1/f;

    new-instance v0, Lcom/batch/android/f1/f;

    const-string v1, "TRACKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f1/f;->c:Lcom/batch/android/f1/f;

    new-instance v0, Lcom/batch/android/f1/f;

    const-string v1, "PUSH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f1/f;->d:Lcom/batch/android/f1/f;

    new-instance v0, Lcom/batch/android/f1/f;

    const-string v1, "ATTRIBUTES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f1/f;->e:Lcom/batch/android/f1/f;

    new-instance v0, Lcom/batch/android/f1/f;

    const-string v1, "ATTRIBUTES_CHECK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f1/f;->f:Lcom/batch/android/f1/f;

    new-instance v0, Lcom/batch/android/f1/f;

    const-string v1, "LOCAL_CAMPAIGNS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/f1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/f1/f;->g:Lcom/batch/android/f1/f;

    invoke-static {}, Lcom/batch/android/f1/f;->a()[Lcom/batch/android/f1/f;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f1/f;->h:[Lcom/batch/android/f1/f;

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

.method private static synthetic a()[Lcom/batch/android/f1/f;
    .locals 6

    sget-object v0, Lcom/batch/android/f1/f;->b:Lcom/batch/android/f1/f;

    sget-object v1, Lcom/batch/android/f1/f;->c:Lcom/batch/android/f1/f;

    sget-object v2, Lcom/batch/android/f1/f;->d:Lcom/batch/android/f1/f;

    sget-object v3, Lcom/batch/android/f1/f;->e:Lcom/batch/android/f1/f;

    sget-object v4, Lcom/batch/android/f1/f;->f:Lcom/batch/android/f1/f;

    sget-object v5, Lcom/batch/android/f1/f;->g:Lcom/batch/android/f1/f;

    filled-new-array/range {v0 .. v5}, [Lcom/batch/android/f1/f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/f1/f;
    .locals 1

    const-class v0, Lcom/batch/android/f1/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/f1/f;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/f1/f;
    .locals 1

    sget-object v0, Lcom/batch/android/f1/f;->h:[Lcom/batch/android/f1/f;

    invoke-virtual {v0}, [Lcom/batch/android/f1/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/f1/f;

    return-object v0
.end method
