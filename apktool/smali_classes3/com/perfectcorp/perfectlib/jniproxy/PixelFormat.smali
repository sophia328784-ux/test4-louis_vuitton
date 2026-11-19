.class public final enum Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Format32bppBGRA:Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

.field public static final enum Format32bppRGBA:Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;-><init>(I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->Format32bppRGBA:Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    new-instance v1, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;-><init>()V

    sput-object v1, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->Format32bppBGRA:Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->b:[Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Format32bppBGRA"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget v0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat$a;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat$a;->a:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string p1, "Format32bppRGBA"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->a:I

    const/4 p0, 0x1

    .line 15
    sput p0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->b:[Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->a:I

    return p0
.end method
