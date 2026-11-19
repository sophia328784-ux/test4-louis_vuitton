.class public final enum Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum VN_BLUSH_MATTE:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

.field public static final enum VN_BLUSH_SATIN:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

.field public static final enum VN_BLUSH_SHIMMER:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_MATTE:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    new-instance v1, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    const-string v2, "VN_BLUSH_SATIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_SATIN:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    new-instance v2, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    const-string v3, "VN_BLUSH_SHIMMER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_SHIMMER:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->b:[Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "VN_BLUSH_MATTE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput v1, p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a:I

    const/4 p0, 0x1

    sput p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType$a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    sget p1, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType$a;->a:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType$a;->a:I

    .line 13
    iput p1, p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->b:[Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a:I

    return p0
.end method
