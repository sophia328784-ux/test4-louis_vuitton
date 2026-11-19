.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureSupportedMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field public static final enum CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field public static final enum REAL_3D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field public static final enum THREE_D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field public static final enum TWO_D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field private static final synthetic c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    const-string v1, "2D"

    const-string v2, "TWO_D"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->TWO_D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    const-string v2, "3D"

    const-string v4, "THREE_D"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->THREE_D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    const/4 v4, 0x2

    const-string v6, "cube_eyewear"

    const-string v7, "CUBE_EYEWEAR"

    invoke-direct {v2, v7, v4, v6, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move v4, v3

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    const/4 v6, 0x3

    const-string v7, "real_3D"

    const-string v8, "REAL_3D"

    invoke-direct {v3, v8, v6, v7, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->REAL_3D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move v6, v4

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    const/4 v7, 0x4

    const-string v8, "All"

    const-string v9, "ALL"

    invoke-direct {v4, v9, v7, v8, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->ALL:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    const/4 v7, 0x5

    const-string v8, ""

    const-string v9, "NONE"

    invoke-direct {v5, v9, v7, v8, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    filled-new-array/range {v0 .. v5}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->TWO_D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, La61;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, La61;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, La61;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, La61;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, La61;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, La61;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->b:Z

    return p0
.end method
