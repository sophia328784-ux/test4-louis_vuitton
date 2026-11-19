.class final enum Lcom/batch/android/json/JSONStringer$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/json/JSONStringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/json/JSONStringer$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/json/JSONStringer$a;

.field public static final enum c:Lcom/batch/android/json/JSONStringer$a;

.field public static final enum d:Lcom/batch/android/json/JSONStringer$a;

.field public static final enum e:Lcom/batch/android/json/JSONStringer$a;

.field public static final enum f:Lcom/batch/android/json/JSONStringer$a;

.field public static final enum g:Lcom/batch/android/json/JSONStringer$a;

.field private static final synthetic h:[Lcom/batch/android/json/JSONStringer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONStringer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    new-instance v0, Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONStringer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    new-instance v0, Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "EMPTY_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONStringer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    new-instance v0, Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "DANGLING_KEY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONStringer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    new-instance v0, Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONStringer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    new-instance v0, Lcom/batch/android/json/JSONStringer$a;

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONStringer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->g:Lcom/batch/android/json/JSONStringer$a;

    invoke-static {}, Lcom/batch/android/json/JSONStringer$a;->a()[Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/json/JSONStringer$a;->h:[Lcom/batch/android/json/JSONStringer$a;

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

.method private static synthetic a()[Lcom/batch/android/json/JSONStringer$a;
    .locals 6

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->b:Lcom/batch/android/json/JSONStringer$a;

    sget-object v1, Lcom/batch/android/json/JSONStringer$a;->c:Lcom/batch/android/json/JSONStringer$a;

    sget-object v2, Lcom/batch/android/json/JSONStringer$a;->d:Lcom/batch/android/json/JSONStringer$a;

    sget-object v3, Lcom/batch/android/json/JSONStringer$a;->e:Lcom/batch/android/json/JSONStringer$a;

    sget-object v4, Lcom/batch/android/json/JSONStringer$a;->f:Lcom/batch/android/json/JSONStringer$a;

    sget-object v5, Lcom/batch/android/json/JSONStringer$a;->g:Lcom/batch/android/json/JSONStringer$a;

    filled-new-array/range {v0 .. v5}, [Lcom/batch/android/json/JSONStringer$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/json/JSONStringer$a;
    .locals 1

    const-class v0, Lcom/batch/android/json/JSONStringer$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/json/JSONStringer$a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/json/JSONStringer$a;
    .locals 1

    sget-object v0, Lcom/batch/android/json/JSONStringer$a;->h:[Lcom/batch/android/json/JSONStringer$a;

    invoke-virtual {v0}, [Lcom/batch/android/json/JSONStringer$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/json/JSONStringer$a;

    return-object v0
.end method
