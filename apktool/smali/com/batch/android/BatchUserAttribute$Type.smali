.class public final enum Lcom/batch/android/BatchUserAttribute$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchUserAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/BatchUserAttribute$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOL:Lcom/batch/android/BatchUserAttribute$Type;

.field public static final enum DATE:Lcom/batch/android/BatchUserAttribute$Type;

.field public static final enum DOUBLE:Lcom/batch/android/BatchUserAttribute$Type;

.field public static final enum LONGLONG:Lcom/batch/android/BatchUserAttribute$Type;

.field public static final enum STRING:Lcom/batch/android/BatchUserAttribute$Type;

.field public static final enum URL:Lcom/batch/android/BatchUserAttribute$Type;

.field private static final synthetic b:[Lcom/batch/android/BatchUserAttribute$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/BatchUserAttribute$Type;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchUserAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->STRING:Lcom/batch/android/BatchUserAttribute$Type;

    new-instance v0, Lcom/batch/android/BatchUserAttribute$Type;

    const-string v1, "LONGLONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchUserAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->LONGLONG:Lcom/batch/android/BatchUserAttribute$Type;

    new-instance v0, Lcom/batch/android/BatchUserAttribute$Type;

    const-string v1, "DOUBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchUserAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->DOUBLE:Lcom/batch/android/BatchUserAttribute$Type;

    new-instance v0, Lcom/batch/android/BatchUserAttribute$Type;

    const-string v1, "BOOL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchUserAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->BOOL:Lcom/batch/android/BatchUserAttribute$Type;

    new-instance v0, Lcom/batch/android/BatchUserAttribute$Type;

    const-string v1, "DATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchUserAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->DATE:Lcom/batch/android/BatchUserAttribute$Type;

    new-instance v0, Lcom/batch/android/BatchUserAttribute$Type;

    const-string v1, "URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchUserAttribute$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->URL:Lcom/batch/android/BatchUserAttribute$Type;

    invoke-static {}, Lcom/batch/android/BatchUserAttribute$Type;->a()[Lcom/batch/android/BatchUserAttribute$Type;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchUserAttribute$Type;->b:[Lcom/batch/android/BatchUserAttribute$Type;

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

.method private static synthetic a()[Lcom/batch/android/BatchUserAttribute$Type;
    .locals 6

    sget-object v0, Lcom/batch/android/BatchUserAttribute$Type;->STRING:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v1, Lcom/batch/android/BatchUserAttribute$Type;->LONGLONG:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v2, Lcom/batch/android/BatchUserAttribute$Type;->DOUBLE:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v3, Lcom/batch/android/BatchUserAttribute$Type;->BOOL:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v4, Lcom/batch/android/BatchUserAttribute$Type;->DATE:Lcom/batch/android/BatchUserAttribute$Type;

    sget-object v5, Lcom/batch/android/BatchUserAttribute$Type;->URL:Lcom/batch/android/BatchUserAttribute$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/batch/android/BatchUserAttribute$Type;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/BatchUserAttribute$Type;
    .locals 1

    const-class v0, Lcom/batch/android/BatchUserAttribute$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchUserAttribute$Type;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/BatchUserAttribute$Type;
    .locals 1

    sget-object v0, Lcom/batch/android/BatchUserAttribute$Type;->b:[Lcom/batch/android/BatchUserAttribute$Type;

    invoke-virtual {v0}, [Lcom/batch/android/BatchUserAttribute$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/BatchUserAttribute$Type;

    return-object v0
.end method
