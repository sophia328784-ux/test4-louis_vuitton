.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceArtLayer2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

.field public static final enum YES:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "YES"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->YES:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "NO"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->NO:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->b:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->YES:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->NO:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->b:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    return-object v0
.end method
