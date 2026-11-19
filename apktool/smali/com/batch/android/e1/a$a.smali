.class public final enum Lcom/batch/android/e1/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e1/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/batch/android/e1/a$a;

.field public static final enum e:Lcom/batch/android/e1/a$a;

.field public static final enum f:Lcom/batch/android/e1/a$a;

.field public static final enum g:Lcom/batch/android/e1/a$a;

.field private static final synthetic h:[Lcom/batch/android/e1/a$a;


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/batch/android/e1/a$a;

    const-string v1, "CENTER_CROP_MP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/batch/android/e1/a$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/batch/android/e1/a$a;->d:Lcom/batch/android/e1/a$a;

    new-instance v0, Lcom/batch/android/e1/a$a;

    const-string v1, "CENTER_CROP_200"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/batch/android/e1/a$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/batch/android/e1/a$a;->e:Lcom/batch/android/e1/a$a;

    new-instance v0, Lcom/batch/android/e1/a$a;

    const-string v1, "FIT_CENTER_MP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/batch/android/e1/a$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/batch/android/e1/a$a;->f:Lcom/batch/android/e1/a$a;

    new-instance v0, Lcom/batch/android/e1/a$a;

    const-string v1, "FIT_CENTER_200"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/batch/android/e1/a$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/batch/android/e1/a$a;->g:Lcom/batch/android/e1/a$a;

    invoke-static {}, Lcom/batch/android/e1/a$a;->a()[Lcom/batch/android/e1/a$a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e1/a$a;->h:[Lcom/batch/android/e1/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/batch/android/e1/a$a;->b:I

    iput-boolean p4, p0, Lcom/batch/android/e1/a$a;->c:Z

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/e1/a$a;
    .locals 4

    sget-object v0, Lcom/batch/android/e1/a$a;->d:Lcom/batch/android/e1/a$a;

    sget-object v1, Lcom/batch/android/e1/a$a;->e:Lcom/batch/android/e1/a$a;

    sget-object v2, Lcom/batch/android/e1/a$a;->f:Lcom/batch/android/e1/a$a;

    sget-object v3, Lcom/batch/android/e1/a$a;->g:Lcom/batch/android/e1/a$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/e1/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e1/a$a;
    .locals 1

    const-class v0, Lcom/batch/android/e1/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e1/a$a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e1/a$a;
    .locals 1

    sget-object v0, Lcom/batch/android/e1/a$a;->h:[Lcom/batch/android/e1/a$a;

    invoke-virtual {v0}, [Lcom/batch/android/e1/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e1/a$a;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget p0, p0, Lcom/batch/android/e1/a$a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/e1/a$a;->c:Z

    return p0
.end method
