.class final enum Lcom/batch/android/a0/g$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/a0/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/a0/g$b;

.field public static final enum c:Lcom/batch/android/a0/g$b;

.field public static final enum d:Lcom/batch/android/a0/g$b;

.field public static final enum e:Lcom/batch/android/a0/g$b;

.field public static final enum f:Lcom/batch/android/a0/g$b;

.field public static final enum g:Lcom/batch/android/a0/g$b;

.field private static final synthetic h:[Lcom/batch/android/a0/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/a0/g$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/a0/g$b;->b:Lcom/batch/android/a0/g$b;

    new-instance v0, Lcom/batch/android/a0/g$b;

    const-string v1, "BLOCK_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/a0/g$b;->c:Lcom/batch/android/a0/g$b;

    new-instance v0, Lcom/batch/android/a0/g$b;

    const-string v1, "BLOCK_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/a0/g$b;->d:Lcom/batch/android/a0/g$b;

    new-instance v0, Lcom/batch/android/a0/g$b;

    const-string v1, "PROPERTY_SEPARATOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/a0/g$b;->e:Lcom/batch/android/a0/g$b;

    new-instance v0, Lcom/batch/android/a0/g$b;

    const-string v1, "PROPERTY_END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/a0/g$b;->f:Lcom/batch/android/a0/g$b;

    new-instance v0, Lcom/batch/android/a0/g$b;

    const-string v1, "NEW_LINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/a0/g$b;->g:Lcom/batch/android/a0/g$b;

    invoke-static {}, Lcom/batch/android/a0/g$b;->a()[Lcom/batch/android/a0/g$b;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a0/g$b;->h:[Lcom/batch/android/a0/g$b;

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

.method public static a(C)Lcom/batch/android/a0/g$b;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/batch/android/a0/g$b;->b:Lcom/batch/android/a0/g$b;

    return-object p0

    :cond_0
    sget-object p0, Lcom/batch/android/a0/g$b;->f:Lcom/batch/android/a0/g$b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/batch/android/a0/g$b;->e:Lcom/batch/android/a0/g$b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/batch/android/a0/g$b;->d:Lcom/batch/android/a0/g$b;

    return-object p0

    :cond_3
    sget-object p0, Lcom/batch/android/a0/g$b;->c:Lcom/batch/android/a0/g$b;

    return-object p0

    :cond_4
    sget-object p0, Lcom/batch/android/a0/g$b;->g:Lcom/batch/android/a0/g$b;

    return-object p0
.end method

.method private static synthetic a()[Lcom/batch/android/a0/g$b;
    .locals 6

    .line 38
    sget-object v0, Lcom/batch/android/a0/g$b;->b:Lcom/batch/android/a0/g$b;

    sget-object v1, Lcom/batch/android/a0/g$b;->c:Lcom/batch/android/a0/g$b;

    sget-object v2, Lcom/batch/android/a0/g$b;->d:Lcom/batch/android/a0/g$b;

    sget-object v3, Lcom/batch/android/a0/g$b;->e:Lcom/batch/android/a0/g$b;

    sget-object v4, Lcom/batch/android/a0/g$b;->f:Lcom/batch/android/a0/g$b;

    sget-object v5, Lcom/batch/android/a0/g$b;->g:Lcom/batch/android/a0/g$b;

    filled-new-array/range {v0 .. v5}, [Lcom/batch/android/a0/g$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/a0/g$b;
    .locals 1

    const-class v0, Lcom/batch/android/a0/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/a0/g$b;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/a0/g$b;
    .locals 1

    sget-object v0, Lcom/batch/android/a0/g$b;->h:[Lcom/batch/android/a0/g$b;

    invoke-virtual {v0}, [Lcom/batch/android/a0/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/a0/g$b;

    return-object v0
.end method
